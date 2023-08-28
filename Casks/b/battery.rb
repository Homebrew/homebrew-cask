cask "battery" do
  version "1.2.0"
  sha256 "9601e755ce31e24e159d3c2cf53123fae5385916830e57b6746734b3d07163c0"

  url "https://github.com/actuallymentor/battery/releases/download/v#{version}/battery-#{version}-mac-arm64.dmg"
  name "Battery"
  desc "CLI for managing the battery charging status"
  homepage "https://github.com/actuallymentor/battery/"

  auto_updates true
  depends_on arch: :arm64

  app "battery.app"

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
