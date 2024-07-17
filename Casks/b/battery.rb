cask "battery" do
  version "1.2.2"
  sha256 "dc0ce58181bc53bbd4f2c500162e529067bd7d234962c8c7abfd7539c6e392ad"

  url "https://github.com/actuallymentor/battery/releases/download/v#{version}/battery-#{version}-mac-arm64.dmg"
  name "Battery"
  desc "App for managing battery charging. (Also installs a CLI on first use.)"
  homepage "https://github.com/actuallymentor/battery/"

  auto_updates true
  depends_on macos: ">= :catalina"
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
