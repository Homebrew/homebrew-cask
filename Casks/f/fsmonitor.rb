cask "fsmonitor" do
  version "2.0,158"
  sha256 "9e9b73568bfcd91ef64980782b847e1fc721b001ae38a0fa03fbf5de08bef6ef"

  url "https://tristan-software.ch/FSMonitor/Archives/FSMonitor_#{version.csv.first}(#{version.csv.second}).zip",
      verified: "tristan-software.ch/FSMonitor/"
  name "FSMonitor"
  desc "Visualize filesystem changes in realtime"
  homepage "https://fsmonitor.com/"

  livecheck do
    url "https://fsmonitor.com/FSMonitor/Archives/appcast2.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "FSMonitor.app"

  uninstall launchctl: "com.tristan.fseventstool",
            delete:    "/Library/PrivilegedHelperTools/com.tristan.fseventstool"

  zap trash: [
    "/Users/Shared/FSMonitor",
    "~/Library/Application Support/com.tristan.FSMonitor",
    "~/Library/Application Support/FSMonitor",
    "~/Library/Caches/com.tristan.FSMonitor",
    "~/Library/Preferences/com.tristan.FSMonitor.plist",
    "~/Library/Saved Application State/com.tristan.FSMonitor.savedState",
  ]
end
