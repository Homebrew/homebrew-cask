cask 'rstudio' do
  version '1.3.1056'
  sha256 'f343c77da23e642bc2a3be7263b3f719571d586285c91e8822e0b9276dbd25d1'

  # rstudio.org/ was verified as official when first introduced to the cask
  url "https://download1.rstudio.org/desktop/macos/RStudio-#{version}.dmg"
  appcast 'https://www.rstudio.org/links/check_for_update?version=1.0.0&os=mac'
  name 'RStudio'
  homepage 'https://www.rstudio.com/'

  depends_on macos: '>= :high_sierra'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'

  caveats <<~EOS
    #{token} depends on R. The R Project provides official binaries:

      brew cask install r

    Alternatively, the Homebrew-compiled version of R omits the GUI app:

      brew install r
  EOS
end
