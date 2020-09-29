cask "rstudio" do
  version "1.3.1093"
  sha256 "bdc4d3a41f5e714c5399dbad466e31f7b85bf9b93db464c3010f5a560bd9914d"

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
