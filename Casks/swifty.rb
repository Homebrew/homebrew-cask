cask "swifty" do
  version "0.6.1"
  sha256 "2bf1e6f04b0b9c9a0e43d5499b4e072e1e2ee200beb37b5a4bd82344db968428"

  # github.com/swiftyapp/swifty/ was verified as official when first introduced to the cask
  url "https://github.com/swiftyapp/swifty/releases/download/v#{version}/Swifty-#{version}.dmg"
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
