cask "fsmonitor" do
  version "1.2,137"
  sha256 "f7e78086bbcae56c00582aae04abfe7bbbc50235d0228766d0dbc5b18fa0a3db"

  # tristan-software.ch/FSMonitor/ was verified as official when first introduced to the cask
  url "https://tristan-software.ch/FSMonitor/Archives/FSMonitor_#{version.before_comma}(#{version.after_comma}).zip"
  appcast "https://fsmonitor.com/FSMonitor/Archives/appcast2.xml"
  name "FSMonitor"
  homepage "https://fsmonitor.com/"

  auto_updates true

  app "FSMonitor.app"

  uninstall delete:    "/Library/PrivilegedHelperTools/com.tristan.fseventstool",
            launchctl: "com.tristan.fseventstool"

  zap trash: [
    "/Users/Shared/FSMonitor",
    "~/Library/Application Support/FSMonitor",
    "~/Library/Application Support/com.tristan.FSMonitor",
    "~/Library/Caches/com.tristan.FSMonitor",
    "~/Library/Preferences/com.tristan.FSMonitor.plist",
    "~/Library/Saved Application State/com.tristan.FSMonitor.savedState",
  ]
end
