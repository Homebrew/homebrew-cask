cask "rstudio" do
  version "1.3.1093"
  sha256 "bdc4d3a41f5e714c5399dbad466e31f7b85bf9b93db464c3010f5a560bd9914d"

  # s3.amazonaws.com/rstudio-desktop/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-desktop/desktop/macos/RStudio-#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://rstudio.org/download/latest/stable/desktop/mac/RStudio-latest.dmg"
  name "RStudio"
  desc "Data science software focusing on R and Python"
  homepage "https://www.rstudio.com/"

  conflicts_with cask: "homebrew/cask-versions/rstudio-preview"
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
