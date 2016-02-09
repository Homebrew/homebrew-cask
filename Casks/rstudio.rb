cask 'rstudio' do
  version '0.99.878'
  sha256 'fc8019678ae647c3f5d8d7a583fd6d40cf599cc5c056c51d68f2243c5472031b'

  # rstudio.org is the official download host per the vendor homepage
  url "https://download1.rstudio.org/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
