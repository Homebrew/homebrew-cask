cask "rstudio@daily" do
  version "2025.04.0-daily-184"
  sha256 "5699a4f9352968eb18e8012fbad79d523e5fcda501c3cbf38c8871678f5df455"

  url "https://rstudio-ide-build.s3.amazonaws.com/electron/macos/RStudio-#{version}.dmg",
      verified: "rstudio-ide-build.s3.amazonaws.com/electron/macos/"
  name "RStudio Daily"
  desc "Data science software focusing on R and Python"
  homepage "https://dailies.rstudio.com/"

  livecheck do
    url "https://dailies.rstudio.com/rstudio/latest/index.json"
    strategy :json do |json|
      json.dig("products", "electron", "platforms", "macos", "version")
          &.tr("+", "-")
    end
  end

  conflicts_with cask: "rstudio"
  depends_on macos: ">= :monterey"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"

  caveats <<~EOS
    #{token} depends on R. The R Project provides official binaries:

      brew install --cask r

    Alternatively, the Homebrew-compiled version of R omits the GUI app:

      brew install r
  EOS
end
