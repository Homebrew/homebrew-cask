cask 'rstudio' do
  version '1.2.5001'
  sha256 '16bfd9dd348109422b9ff56231ec51d9d3fe18536554a0c75f5fdc10385dfa2a'

  # rstudio.org was verified as official when first introduced to the cask
  url "https://download1.rstudio.org/desktop/macos/RStudio-#{version}.dmg"
  appcast 'https://www.rstudio.org/links/check_for_update?version=1.0.0&os=mac'
  name 'RStudio'
  homepage 'https://www.rstudio.com/'

  depends_on macos: '>= :sierra'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'

  caveats <<~EOS
    #{token} depends on R. The R Project provides official binaries:

      brew cask install r

    Alternatively, the Homebrew-compiled version of R omits the GUI app:

      brew install r
  EOS
end
