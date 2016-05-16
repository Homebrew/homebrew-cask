cask 'rstudio' do
  version '0.99.902'
  sha256 'c0a11f30ebdf4cacaaee450519d3f57fa9d67402594e5ab9c08d9000c2bed379'

  # rstudio.org was verified as official when first introduced to the cask
  url "https://download1.rstudio.org/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
