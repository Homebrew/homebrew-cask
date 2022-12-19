cask "swifty" do
  version "0.6.11"
  sha256 "24f0235dd6ec4980b27c1eb8f6f2409df07274fe6555c912e3dad43180b1d52d"

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
