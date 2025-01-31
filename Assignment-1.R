#installing robotstxt and rvest
library(robotstxt)
library(rvest)

#url of amazon product
url <- "https://www.flipkart.com/search?q=REALME&otracker=search&otracker1=search&marketplace=FLIPKART"
path <- paths_allowed(url)

#parse flipcart html pages for data
web <- read_html(url)

#cm_cr-review_list.review-date
Name <- web%>%html_nodes("._4rR01T")%>%html_text()
View(Name)
Deal_Price <- web%>%html_nodes("._1_WHN1")%>%html_text()
View(Deal_Price)
Ratings <- web%>%html_nodes(".gUuXy-")%>%html_text()
View(Ratings)

# ratings of mobiles based on prices
mobile.ratings <- data.frame(Name, Deal_Price, Ratings)
View(mobile.ratings)