cask 'rstudio' do
  version '1.0.153'
  sha256 'a33d6c0bc02307b10c1f88b938c9b76209d37eb02ceff17661a99a4463aafcbd'

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

      brew install r
      brew cask install r-app
  EOS
end
