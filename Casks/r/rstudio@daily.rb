cask "rstudio@daily" do
  version "2024.07.0-daily-116"
  sha256 "9f053beee8c12e5874ef9ddc97792a1c6d7e94e71d3a7b1e621b6f065f2c635e"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-#{version}.dmg",
      verified: "s3.amazonaws.com/rstudio-ide-build/electron/macos/"
  name "RStudio Daily"
  desc "Data science software focusing on R and Python"
  homepage "https://dailies.rstudio.com/"

  livecheck do
    url "https://dailies.rstudio.com/rstudio/latest/index.json"
    strategy :json do |json|
      json["products"]["electron"]["platforms"]["macos"]["version"]
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
