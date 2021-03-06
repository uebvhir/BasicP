% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/normalization.R
\name{normalization}
\alias{normalization}
\title{normalization}
\usage{
normalization(my.data = NULL, method = NULL, targetsinfo, inputDir,
  loadFile = FALSE, normalizedFName = "normalized.Rda", outputDir,
  exonSt = FALSE)
}
\arguments{
\item{my.data}{Raw data to be normalized.}

\item{method}{Method used for the normalization.}

\item{targetsinfo}{Target information about raw data.}

\item{inputDir}{Path of the normalized data file.}

\item{loadFile}{If TRUE the normalized data is loaded.}

\item{normalizedFName}{Name of the eset normalized file. By default "normalized.Rda"}

\item{outputDir}{Path to store the raw data normalized.}

\item{exonSt}{Default value FALSE. If TRUE the raw data is exon array.}
}
\value{
A data set called my.norm with the raw data normalized.
}
\description{
Function that normalizes raw data.
}
\examples{
\dontrun{
load("rawData.Rda")
rawData <- my.raw
normMethod <- "RMA"
my.targets <- read.AnnotatedDataFrame("./celfiles/targets.txt", header = TRUE, row.names = 1)
celFilesDir <-"./celfiles"
loadFile <- FALSE 
normalized.eset.FileName <-  "normalizedData.Rda"   
outputDir <- "./ResultsDir"
exonStudy <- FALSE
eset_norm <- normalization(my.data = rawData, method = normMethod, 
targetsinfo = my.targets, inputDir = celFilesDir, loadFile = loadFile , 
normalizedFName = normalized.eset.FileName, outputDir = outputDir, 
exonSt = exonStudy)}
}
