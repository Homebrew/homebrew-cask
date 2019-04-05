cask 'rstudio' do
  version '1.1.463'
  sha256 'c6956721114b160e581e02edfe53bc412f9882bdd907a1967f7cdd7ce007094d'

  # rstudio.org was verified as official when first introduced to the cask
  url "https://download1.rstudio.org/RStudio-#{version}.dmg"
  appcast 'https://www.rstudio.org/links/check_for_update?version=1.0.0&os=mac'
  name 'RStudio'
  homepage 'https://www.rstudio.com/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'

  caveats <<~EOS
    #{token} depends on R. The R Project provides official binaries:

      brew cask install r

    Alternatively, the Homebrew-compiled version of R omits the GUI app:

      brew install r
  EOS
end
