cask 'rstudio' do
  version '1.0.44'
  sha256 'ec571ee4d1415cc031f8f55873ca15e75949038fe680520799934e115138066a'

  # rstudio.org was verified as official when first introduced to the cask
  url "https://download1.rstudio.org/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/'

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'

  caveats <<-EOS.undent
    #{token} depends on R.
    There are different ways to satisfy that dependency and we don’t want to impose one, so it is up to you to satisfy it.
    We suggest you do so by running one of:

      brew install homebrew/science/r
      brew cask install r-app
  EOS
end
