cask "swifty" do
  version "0.6.10"
  sha256 "3ec7b781fad9c8d9b978da5678f75966ffb2f6ca44d4f64f159d7fb6b074a0c0"

  url "https://github.com/swiftyapp/swifty/releases/download/v#{version}/Swifty-#{version}.dmg",
      verified: "github.com/swiftyapp/swifty/"
  name "Swifty"
  desc "Offline password manager tool"
  homepage "https://getswifty.pro/"

  auto_updates true

  app "Swifty.app"

  zap trash: [
    "~/Library/Application Support/Swifty",
    "~/Library/Logs/Swifty",
    "~/Library/Preferences/com.electron.swifty.plist",
    "~/Library/Saved Application State/com.electron.swifty.savedState",
  ]
end
