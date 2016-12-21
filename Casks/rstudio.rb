cask 'rstudio' do
  version '1.0.44'
  sha256 'ec571ee4d1415cc031f8f55873ca15e75949038fe680520799934e115138066a'

  # rstudio.org was verified as official when first introduced to the cask
  url "https://download1.rstudio.org/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/'

  depends_on formula: 'homebrew/science/r'

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
