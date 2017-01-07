cask 'rstudio' do
  version '1.0.136'
  sha256 '0345818c518bc668e2939e36dcada7572730bdc86cd1b40e1b7d6eee3cb481e2'

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
