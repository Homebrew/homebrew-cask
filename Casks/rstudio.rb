class Rstudio < Cask
  version '0.98.978'
  sha256 '8484c18c356fe046682be7abe64312ca4defe2fc8b72ef55fbb396f8097e48e2'

  url "http://download1.rstudio.org/RStudio-#{version}.dmg"
  homepage 'http://www.rstudio.com/'

  link 'RStudio.app'
end
