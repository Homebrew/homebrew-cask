cask "captain" do
  arch arm: "-arm64"

  version "10.5.0"
  sha256 arm:   "fa9a7d9efb07c9ed837ab856be7ed9e503a01a7614c8bedaeb11420bc647bcfd",
         intel: "3828412835c7b690b5478c796f15051b0260876eb223b20e9172b9040c424693"

  url "https://github.com/RickWong/Captain/releases/download/v#{version}/Captain-#{version}#{arch}.dmg",
      verified: "github.com/RickWong/Captain/"
  name "Captain"
  desc "Manage Docker containers from the menu bar"
  homepage "https://getcaptain.co/"

  app "Captain.app"

  zap trash: [
    "~/Library/Application Support/captain",
    "~/Library/Preferences/com.electron.captain.helper.plist",
    "~/Library/Preferences/com.electron.captain.plist",
    "~/Library/Saved Application State/com.electron.captain.savedState",
  ]
end
