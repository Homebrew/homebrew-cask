cask "cleanmymac-zh" do
  version "4.15.14"
  sha256 "c39b42a128b3b5542e7b9a6fcc51eb26d1ab2d123d991dc17e314b092ce671b4"

  url "https://dl.devmate.com/com.macpaw.zh.CleanMyMac#{version.major}/CleanMyMacXChinese.dmg",
      verified: "dl.devmate.com/"
  name "CleanMyMac X Chinese"
  desc "Tool to remove unnecessary files and folders from disk Chinese edition"
  homepage "https://www.mycleanmymac.com/"

  livecheck do
    url "https://updates.devmate.com/com.macpaw.zh.CleanMyMac#{version.major}.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  conflicts_with cask: "cleanmymac"

  app "CleanMyMac-X.app"

  uninstall launchctl:  [
              "com.macpaw.zh.CleanMyMac#{version.major}.Agent",
              "com.macpaw.zh.CleanMyMac#{version.major}.HealthMonitor",
              "com.macpaw.zh.CleanMyMac#{version.major}.Menu",
              "com.macpaw.zh.CleanMyMac#{version.major}.Scheduler",
              "com.macpaw.zh.CleanMyMac#{version.major}.Updater",
            ],
            quit:       [
              "com.macpaw.zh.CleanMyMac#{version.major}",
              "com.macpaw.zh.CleanMyMac#{version.major}.HealthMonitor",
              "com.macpaw.zh.CleanMyMac#{version.major}.Menu",
            ],
            login_item: "CleanMyMac #{version.major} Menu",
            delete:     [
              "/Library/LaunchDaemons/com.macpaw.zh.CleanMyMac#{version.major}.Agent.plist",
              "/Library/PrivilegedHelperTools/com.macpaw.zh.CleanMyMac#{version.major}.Agent",
            ]

  zap trash: [
    "/Users/Shared/CleanMyMac-X Menu",
    "/Users/Shared/CleanMyMac-X",
    "~/Library/Application Scripts/com.macpaw.zh.CleanMyMac#{version.major}.CleanMyMacWidget",
    "~/Library/Application Support/CleanMyMac-X*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macpaw.zh.CleanMyMac#{version.major}.scheduler.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macpaw.zh.CleanMyMac#{version.major}.sfl*",
    "~/Library/Caches/CleanMyMac #{version.major}",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.macpaw.zh.CleanMyMac#{version.major}.help*",
    "~/Library/Caches/com.macpaw.zh.CleanMyMac#{version.major}*",
    "~/Library/Containers/com.macpaw.zh.CleanMyMac#{version.major}.CleanMyMacWidget",
    "~/Library/Group Containers/*.com.macpaw.zh.CleanMyMac#{version.major}",
    "~/Library/HTTPStorages/com.macpaw.zh.CleanMyMac#{version.major}*",
    "~/Library/LaunchAgents/com.macpaw.zh.CleanMyMac#{version.major}*",
    "~/Library/Logs/CleanMyMac X Menu",
    "~/Library/Logs/com.macpaw.zh.CleanMyMac#{version.major}",
    "~/Library/Preferences/*.com.macpaw.zh.CleanMyMac#{version.major}*.plist",
    "~/Library/Saved Application State/com.macpaw.zh.CleanMyMac#{version.major}.savedState",
    "~/Library/WebKit/com.macpaw.zh.CleanMyMac#{version.major}",
    "~/Pictures/Photos Library.photoslibrary/private/com.macpaw.zh.CleanMyMac#{version.major}",
  ]
end
