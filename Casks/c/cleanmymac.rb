cask "cleanmymac" do
  version "5.0.7,50007.0.2503261326,1743010031"
  sha256 "0ae57e3e3b0c056730546433e1bf2d10f2e502c3534ca1e27b0c00e5a994a43e"

  url "https://dl.devmate.com/com.macpaw.CleanMyMac#{version.major}/#{version.csv.second}/#{version.csv.third}/CleanMyMac#{version.major}-#{version.csv.second}.zip",
      verified: "dl.devmate.com/"
  name "CleanMyMac"
  desc "Tool to remove unnecessary files and folders from disk"
  homepage "https://macpaw.com/cleanmymac"

  livecheck do
    url "https://updates.devmate.com/com.macpaw.CleanMyMac#{version.major}.xml"
    regex(%r{/([^/]+)/CleanMyMac#{version.major}[._-]v?(?:\d+(?:\.\d+)+)\.zip}i)
    strategy :sparkle do |item, regex|
      directory = item.url[regex, 1]
      next if directory.blank?

      "#{item.short_version},#{item.version},#{directory}"
    end
  end

  auto_updates true
  conflicts_with cask: "cleanmymac-zh"
  depends_on macos: ">= :big_sur"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "CleanMyMac_#{version.major}.app", target: "CleanMyMac.app"

  uninstall launchctl:  [
              "com.macpaw.CleanMyMac#{version.major}.HealthMonitor",
              "com.macpaw.CleanMyMac#{version.major}.Menu",
            ],
            quit:       [
              "com.macpaw.CleanMyMac#{version.major}",
              "com.macpaw.CleanMyMac#{version.major}.HealthMonitor",
              "com.macpaw.CleanMyMac#{version.major}.Menu",
            ],
            login_item: "CleanMyMac #{version.major} Menu",
            delete:     "/Library/PrivilegedHelperTools/com.macpaw.CleanMyMac#{version.major}.Agent"

  zap trash: [
    "/Library/LaunchDaemons/com.macpaw.CleanMyMac#{version.major}.Agent.plist",
    "/Library/PrivilegedHelperTools/com.macpaw.CleanMyMac#{version.major}.Agent",
    "/Users/Shared/CleanMyMac_#{version.major}",
    "~/Library/Application Scripts/S8EX82NJP6.com.macpaw.CleanMyMac#{version.major}",
    "~/Library/Application Support/CleanMyMac_#{version.major}",
    "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}",
    "~/Library/Group Containers/S8EX82NJP6.com.macpaw.CleanMyMac#{version.major}",
    "~/Library/HTTPStorages/com.macpaw.CleanMyMac#{version.major}",
    "~/Library/HTTPStorages/com.macpaw.CleanMyMac#{version.major}.binarycookies",
    "~/Library/LaunchAgents/com.macpaw.CleanMyMac#{version.major}.Updater.plist",
    "~/Library/Logs/com.macpaw.CleanMyMac#{version.major}",
    "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.plist",
    "~/Library/Saved Application State/com.macpaw.CleanMyMac#{version.major}.savedState",
  ]
end
