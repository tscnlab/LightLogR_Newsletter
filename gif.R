library(tidyverse)
library(magick)


path <- "assets/02/Live.mp4"
file <- magick::image_read_video(path, fps = 15)
file3 <- magick::image_read_video(path, fps = 8)
file[352]

file3 <- 
c(file3, rep(file[352], 26))

file2 <- image_scale(file3, "800")
file2[189]

image_write_gif(file2,"assets/02/Live.gif", delay = 1/10)
