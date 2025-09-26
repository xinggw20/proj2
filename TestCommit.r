# Test for commit
# Hello
set.seed(321)

flips_until_k_heads <- function(p= 0.5, k = 2) {
  consec <- 0; flips <- 0
  while(consec < k) {
    flips <- flips + 1
    if (runif(1) < p) consec <- consec + 1 else consec <- 0
  }
  flips
}

N <- 10000
res <- replicate(N, flips_until_k_heads(0.5, 2))

mean(res)
median(res)

hist(res,
     breaks = seq(0.5, max(res)+0.5, 1),
     main = "Full Range",
     xlab = "flips")