cask "battery" do
  version "1.0.6"
  sha256 "e8df0969017f17f26381b41b47e9af9d5d04f20b197744fa7112c60a9bd7a143"

  url "https://github.com/actuallymentor/battery/releases/download/v#{version}/battery-#{version}-arm64.dmg"
  name "Battery"
  desc "CLI for managing the battery charging status"
  homepage "https://github.com/actuallymentor/battery/"

  depends_on arch: :arm64

  app "Battery.app"

  uninstall delete: "/usr/local/bin/smc"

  zap trash: [
    "~/.battery",
    "~/Library/Application Support/battery",
    "~/Library/LaunchAgents/battery.plist",
    "~/Library/Preferences/co.palokaj.battery.plist",
    "~/Library/Preferences/org.mentor.Battery.plist",
    "~/Library/Saved Application State/co.palokaj.battery.savedState",
  ]
end
