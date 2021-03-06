## Function that works together with procTraj.R

add.met <- function(month, Year) {
  
  ## if month is one, need previous year and month = 12
  if (month == 0) {
    month <- 12
    Year <- as.numeric(Year) - 1
  }
  
  if (month < 10) month <- paste("0", month, sep = "")
  ## add first line
  
  write.table(paste("echo", met, "      >>CONTROL"),
              bat.file, col.names = FALSE,
              row.names = FALSE, quote = FALSE, append = TRUE)
  
  x <- paste("echo RP", Year, month, ".gbl       >>CONTROL", sep = "")
  write.table(x, bat.file, col.names = FALSE,
              row.names = FALSE, quote = FALSE, append = TRUE)
}
