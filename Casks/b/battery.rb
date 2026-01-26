cask "battery" do
  version "1.3.2"
  sha256 "78bb43edd4170825137f48878600d928a7fef3b053339edb8c64fb80e7d78d83"

  url "https://github.com/actuallymentor/battery/releases/download/v#{version}/battery-#{version}-mac-arm64.zip"
  name "Battery"
  desc "App for managing battery charging. (Also installs a CLI on first use.)"
  homepage "https://github.com/actuallymentor/battery/"

  auto_updates true
  depends_on arch: :arm64

  app "battery.app"

  uninstall delete: "/usr/local/bin/smc"

  zap trash: [
    "~/.battery",
    "~/Library/Application Support/battery",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.palokaj.battery.sfl*",
    "~/Library/Caches/co.palokaj.battery",
    "~/Library/Caches/co.palokaj.battery.ShipIt",
    "~/Library/HTTPStorages/co.palokaj.battery",
    "~/Library/LaunchAgents/battery.plist",
    "~/Library/Preferences/co.palokaj.battery.plist",
    "~/Library/Preferences/org.mentor.Battery.plist",
    "~/Library/Saved Application State/co.palokaj.battery.savedState",
  ]
end
