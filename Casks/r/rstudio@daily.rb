cask "rstudio@daily" do
  version "2025.12.0-daily-354"
  sha256 "4ea8030525333f7aee87826f5017409047839d81cd518ab71071b62bfea42703"

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

      brew install --cask r-app

    Alternatively, the Homebrew-compiled version of R omits the GUI app:

      brew install r
  EOS
end
