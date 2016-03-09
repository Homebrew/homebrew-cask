cask 'rstudio' do
  version '0.99.891'
  sha256 '1c9b77d2e7a858257bd3875c5e5f419bf077f7f1d403f6c26cdf5a7f1f7e8d60'

  # rstudio.org was verified as official when first introduced to the cask
  url "https://download1.rstudio.org/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
