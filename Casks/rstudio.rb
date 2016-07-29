cask 'rstudio' do
  version '0.99.903'
  sha256 'cb7ac2b9ba2e0d4f4096b2dd2859c72742d12faf1461c68a6bfd3bce532ee1d6'

  # rstudio.org was verified as official when first introduced to the cask
  url "https://download1.rstudio.org/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
