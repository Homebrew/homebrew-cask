cask "rstudio" do
  version "2021.09.0,351"
  sha256 "f8e97ced3107eed24ed946de3c81a8ee4eef550bcaacf91c5a48e803a43b6971"

  url "https://rstudio-desktop.s3.amazonaws.com/desktop/macos/RStudio-#{version.before_comma}%2B#{version.after_comma}.dmg",
      verified: "rstudio-desktop.s3.amazonaws.com/"
  name "RStudio"
  desc "Data science software focusing on R and Python"
  homepage "https://www.rstudio.com/"

  livecheck do
    url "https://rstudio.org/download/latest/stable/desktop/mac/RStudio-latest.dmg"
    strategy :header_match
  end

  conflicts_with cask: "homebrew/cask-versions/rstudio-preview"
  depends_on macos: ">= :high_sierra"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"

  caveats <<~EOS
    #{token} depends on R. The R Project provides official binaries:

      brew install --cask r

    Alternatively, the Homebrew-compiled version of R omits the GUI app:

      brew install r
  EOS
end
