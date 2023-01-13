cask "battery" do
  version "1.0.3"
  sha256 "71e699bcf634f481a0b1c54a2035a04e9e9fec4463c9dbfe95d0370a89aaaabc"

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
