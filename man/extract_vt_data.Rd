% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract_vt_data.R
\name{extract_vt_data}
\alias{extract_vt_data}
\title{Parse data from requests to VecTraits}
\usage{
extract_vt_data(res, cols = NA, returnunique = FALSE)
}
\arguments{
\item{res}{a list of responses from VecTraits.}

\item{cols}{a character vector of columns to extract from the dataset.}

\item{returnunique}{whether to return only the unique rows within each dataset according to the filtered columns.}
}
\value{
A dataframe containing the extracted data.
}
\description{
Extract the data returned by a call to \code{\link[=get_vt_byid]{get_vt_byid()}}, filter columns of interest, and find unique rows if required.
}
\examples{
\dontrun{
vb_basereq() \%>\%
  get_vt_dataset_byid(54) \%>\%
  extract_vt_data(cols=c("DatasetID",
                         "Interactor1Genus",
                         "Interactor1Species"),
                  returnunique=TRUE)
}

}
\author{
Francis Windram
}
