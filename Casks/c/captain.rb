cask "captain" do
  arch arm: "-arm64"

  version "10.4.0"
  sha256 arm:   "082e8960c018eb4542f35624cd1300b51c5c965dfb49a90f2761ad1a69d68488",
         intel: "23f8cd8ceafa78d63d21d2fdfa54c89e91442846fcdccecae3a36e70eeaa1e14"

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
