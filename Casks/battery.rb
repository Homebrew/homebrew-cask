cask "battery" do
  version "1.1.1"
  sha256 "8bff5e7b35f9c20eca7deb6fd178c4606471edde03a55e5e28e4ea38deb81b65"

  url "https://github.com/actuallymentor/battery/releases/download/v#{version}/battery-#{version}-mac-arm64.dmg"
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
