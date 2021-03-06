#' Create hexagonal logo for the package
#'
#' @param subplot image to use as the main logo
#' @param dpi plot resolution (dots-per-inch)
#' @param h_color color for hexagon border
#' @param h_fill color to fill hexagon
#' @param output output file (hexagonal logo)
#' @param package title for logo (package name)
#' @param p_color color for package name
#' @param url URL for package repository or website
#' @param u_size text size for URL
#'
#' @return hexagonal logo
#' @export
#'
#' @examples
#' hex_logo()
#' \dontrun{
#' hex_logo("inst/images/diving.png", output = "inst/images/logo.png")
#' }
hex_logo <- function(subplot = "images/empty.png",
                     dpi = 600,
                     h_color = "#000000",
                     h_fill = "#FFFFFF",
                     output = "images/logo.png",
                     package = "villegar",
                     p_color = "#000000",
                     url = "https://github.com/villegar/villegar",
                     u_size = 1.45) {
  hexSticker::sticker(subplot = subplot, package = package,
                      h_color = h_color,  h_fill = h_fill,
                      dpi = dpi,
                      s_x = 1.0, s_y = .85, s_width = .5,
                      p_x = 1.0, p_y = 1.52, p_size = 6, p_color = p_color,
                      url = url,
                      u_angle = 30, u_color = p_color, u_size = u_size,
                      filename = output)
}

# R4DS BookClub logo
hex_logo(subplot = "images/books.png", 
         dpi = 900,
         output = "images/r4ds-bookclub.png",
         package = "BookClub",
         u_size = 1.6,
         url = "R4DS: https://t.co/HIWwvhm6Eh")

blank_hex_logo <- function(...) {
  hex_logo(h_color = "#FFFFFF", 
           package = "", 
           url = "", 
           out = "images/blank_logo.png", 
           ...)
}

hex_logo()
hex_logo("images/construction.png", output = "images/logo_soon.png")
blank_hex_logo()


