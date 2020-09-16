cask "rstudio" do
  version "1.3.1073"
  sha256 "0878b305c8013cca32f0b383c033203bdb6b9492eb6e598766de76af677b367c"

  # rstudio.org/ was verified as official when first introduced to the cask
  url "https://download1.rstudio.org/desktop/macos/RStudio-#{version}.dmg"
  appcast "https://www.rstudio.org/links/check_for_update?version=1.0.0&os=mac"
  name "RStudio"
  desc "Data science software focusing on R and Python"
  homepage "https://www.rstudio.com/"

  depends_on macos: ">= :high_sierra"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"

  caveats <<~EOS
    #{token} depends on R. The R Project provides official binaries:

      brew cask install r

    Alternatively, the Homebrew-compiled version of R omits the GUI app:

      brew install r
  EOS
end
