cask "cc-switch" do
  version "3.18.0"
  sha256 "26f0b81c4d0d4bc39ace97359e753f323a66f3e5c2a6bf2f341d5a053fb93881"

  url "https://github.com/farion1231/cc-switch/releases/download/v#{version}/CC-Switch-v#{version}-macOS.dmg"
  name "CC Switch"
  desc "Configuration manager for AI coding agents"
  homepage "https://github.com/farion1231/cc-switch"

  auto_updates true
  depends_on macos: :monterey

  app "CC Switch.app"

  zap trash: [
    "~/.cc-switch",
    "~/Library/Application Support/com.ccswitch.desktop",
    "~/Library/Caches/com.ccswitch.desktop",
    "~/Library/Preferences/com.ccswitch.desktop.plist",
    "~/Library/Saved Application State/com.ccswitch.desktop.savedState",
    "~/Library/WebKit/com.ccswitch.desktop",
  ]
end
