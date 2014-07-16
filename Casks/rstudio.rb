class Rstudio < Cask
  version '0.98.976'
  sha256 '4b5d3bde9d04e18d782e5b6e03dc5426333fd3a694d7178e867d0cfc8c872717'

  url "http://download1.rstudio.org/RStudio-#{version}.dmg"
  homepage 'http://www.rstudio.com/'

  link 'RStudio.app'
end
