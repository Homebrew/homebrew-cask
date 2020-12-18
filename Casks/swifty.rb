cask "swifty" do
  version "0.6.2"
  sha256 "03b509b568c486ce94d76edf5002c93b0c40e97610921c315e24592d09d595b6"

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
