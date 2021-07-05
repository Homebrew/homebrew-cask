cask "rstudio" do
  version "1.4.1717"
  sha256 "2cf2549d484b1dbbe553e3b2ef26d22e1a5613d6911a7d91c57b7eef5eedd198"

  url "https://rstudio-desktop.s3.amazonaws.com/desktop/macos/RStudio-#{version}.dmg",
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
