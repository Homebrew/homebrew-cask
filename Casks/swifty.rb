cask "swifty" do
  version "0.6.3"
  sha256 "3ba79239bb32832519df0a3d98a54fab0edfd2f8f3e5f9e94dc6ad2d257d88f8"

  url "https://github.com/swiftyapp/swifty/releases/download/v#{version}/Swifty-#{version}.dmg",
      verified: "github.com/swiftyapp/swifty/"
  appcast "https://github.com/swiftyapp/swifty/releases.atom"
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
