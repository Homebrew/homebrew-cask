class Rstudio < Cask
  version '0.98.1028'
  sha256 '82979dbaef5eb072e392e7e31ebb46760ac028ce238a946687917a33b35fc811'

  url "http://download1.rstudio.org/RStudio-#{version}.dmg"
  homepage 'http://www.rstudio.com/'

  app 'RStudio.app'
end
