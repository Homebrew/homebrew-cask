cask "fsmonitor" do
  version "1.2,137"
  sha256 "f7e78086bbcae56c00582aae04abfe7bbbc50235d0228766d0dbc5b18fa0a3db"

  url "https://tristan-software.ch/FSMonitor/Archives/FSMonitor_#{version.csv.first}(#{version.csv.second}).zip",
      verified: "tristan-software.ch/FSMonitor/"
  name "FSMonitor"
  homepage "https://fsmonitor.com/"

  livecheck do
    url "https://fsmonitor.com/FSMonitor/Archives/appcast2.xml"
    strategy :sparkle
  end

  auto_updates true

  app "FSMonitor.app"

  uninstall launchctl: "com.tristan.fseventstool",
            delete:    "/Library/PrivilegedHelperTools/com.tristan.fseventstool"

  zap trash: [
    "/Users/Shared/FSMonitor",
    "~/Library/Application Support/FSMonitor",
    "~/Library/Application Support/com.tristan.FSMonitor",
    "~/Library/Caches/com.tristan.FSMonitor",
    "~/Library/Preferences/com.tristan.FSMonitor.plist",
    "~/Library/Saved Application State/com.tristan.FSMonitor.savedState",
  ]
end
