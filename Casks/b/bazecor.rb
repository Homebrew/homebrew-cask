cask "bazecor" do
  arch arm: "arm64", intel: "x64"

  version "1.8.2"
  sha256 arm:   "105a5f181589f555ddaa996fc0e13c2389bd2c8ba5373969df492d84ee82ee81",
         intel: "e995146c21a4c0a899015422eb5b7dd2d2d354ea153400eb387c341b7c90878c"

  url "https://github.com/Dygmalab/Bazecor/releases/download/v#{version}/Bazecor-#{version}-#{arch}.dmg",
      verified: "github.com/Dygmalab/Bazecor/"
  name "Bazecor"
  desc "Graphical configurator for Dygma Raise keyboards"
  homepage "https://dygma.com/pages/programmable-split-keyboard"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Bazecor.app"

  zap trash: [
    "~/Library/Application Support/BAZECOR",
    "~/Library/Preferences/com.dygmalab.bazecor.plist",
    "~/Library/Saved Application State/com.dygmalab.bazecor.savedState",
  ]
end
