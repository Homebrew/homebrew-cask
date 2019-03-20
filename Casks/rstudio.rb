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
    #{token} depends on R.
    There are different ways to satisfy that dependency. RStudio recommends installing R from The R Project, which is required to install binary R packages, without needing to compile packages from source.

    https://support.rstudio.com/hc/en-us/articles/217799238

    To install the R Project package run:

      brew cask install r

    Alternative ways to satisfy the dependency are:

      brew install r

    This requires compiling R packages from source.
  EOS
end
