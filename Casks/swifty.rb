cask "swifty" do
  version "0.6.9"
  sha256 "a7a4a2059d8b703b2a33277fabb35a12c4b460c8b5f2679fd4013636be822ad2"

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
