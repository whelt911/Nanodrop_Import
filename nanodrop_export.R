####Script to read Nanodrop data from .ndv file and export as .csv####
####by Will Helt 9/8/16; whelt911@gmail.com####

##Objects that must be defined##

setwd("~/Rwd") #you will have to change the ~/Rwd to whatever folder you are working within (the working directory)

dat <- "L00178_tubes1-16_BV_2016-8-11.ndv" #place within quotation marks the file that you want to read in

name <- "Will is awesome.csv" #set name equal to whatever name you want to give the .csv file


#Read in .ndv data
#header is the module, path, and software version
header <- read.table(dat,nrows = 4, sep="\t",header=F, stringsAsFactors = FALSE)
print(header)

#values are the results from the run
values <- read.table(dat, skip=4, sep="\t",header=T, dec = ",", comment.char="?")
                     
#export values as .csv file
write.csv(values, name)

##file will be placed within the folder that was set as the working directory


####END####
