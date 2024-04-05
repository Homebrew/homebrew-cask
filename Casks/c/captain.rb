cask "captain" do
  arch arm: "-arm64"

  version "10.3.0"
  sha256 arm:   "13b08cdad29509e7266ce7228cd619011c16ccf422dadc32ead96154875adc53",
         intel: "a25bc8aa03dd813b32d2a9689217a7ab651d33f17a7b8b127b11856b167e09a7"

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
