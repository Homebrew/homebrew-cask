cask "cleanmymac-zh" do
  version "4.10.1,41001.0.2201241335"
  sha256 "958c95744cb4246cb1fea9f90a8d22490d88803c0862b22c0a12cd454a739cf7"

  url "https://dl.devmate.com/com.macpaw.zh.CleanMyMac#{version.major}/CleanMyMacXChinese.dmg",
      verified: "dl.devmate.com/"
  name "CleanMyMac X Chinese"
  desc "Tool to remove unnecessary files and folders from disk Chinese edition"
  homepage "https://www.mycleanmymac.com/"

  livecheck do
    url "https://updates.devmate.com/com.macpaw.zh.CleanMyMac#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask: "cleanmymac"

  app "CleanMyMac X.app"

  uninstall delete:     [
    "/Library/LaunchDaemons/com.macpaw.zh.CleanMyMac#{version.major}.Agent.plist",
    "/Library/PrivilegedHelperTools/com.macpaw.zh.CleanMyMac#{version.major}.Agent",
  ],
            launchctl:  [
              "com.macpaw.zh.CleanMyMac#{version.major}.Agent",
              "com.macpaw.zh.CleanMyMac#{version.major}.HealthMonitor",
              "com.macpaw.zh.CleanMyMac#{version.major}.Menu",
              "com.macpaw.zh.CleanMyMac#{version.major}.Scheduler",
              "com.macpaw.zh.CleanMyMac#{version.major}.Updater",
            ],
            login_item: "CleanMyMac #{version.major} Menu",
            quit:       [
              "com.macpaw.zh.CleanMyMac#{version.major}",
              "com.macpaw.zh.CleanMyMac#{version.major}.HealthMonitor",
              "com.macpaw.zh.CleanMyMac#{version.major}.Menu",
            ]

  zap trash: [
    "/Users/Shared/CleanMyMac-X Menu",
    "/Users/Shared/CleanMyMac-X",
    "~/Library/Application Scripts/com.macpaw.zh.CleanMyMac#{version.major}.CleanMyMacWidget",
    "~/Library/Application Support/CleanMyMac-X Menu",
    "~/Library/Application Support/CleanMyMac-X",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macpaw.zh.CleanMyMac#{version.major}.scheduler.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macpaw.zh.CleanMyMac#{version.major}.sfl*",
    "~/Library/Caches/CleanMyMac #{version.major}",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.macpaw.zh.CleanMyMac#{version.major}.help*",
    "~/Library/Caches/com.macpaw.zh.CleanMyMac#{version.major}.HealthMonitor",
    "~/Library/Caches/com.macpaw.zh.CleanMyMac#{version.major}.KnowledgeBase",
    "~/Library/Caches/com.macpaw.zh.CleanMyMac#{version.major}.Menu",
    "~/Library/Caches/com.macpaw.zh.CleanMyMac#{version.major}.Scheduler",
    "~/Library/Caches/com.macpaw.zh.CleanMyMac#{version.major}.Updater",
    "~/Library/Caches/com.macpaw.zh.CleanMyMac#{version.major}",
    "~/Library/Containers/com.macpaw.zh.CleanMyMac#{version.major}.CleanMyMacWidget",
    "~/Library/Group Containers/*.com.macpaw.zh.CleanMyMac#{version.major}",
    "~/Library/HTTPStorages/com.macpaw.zh.CleanMyMac#{version.major}.binarycookies",
    "~/Library/HTTPStorages/com.macpaw.zh.CleanMyMac#{version.major}.Menu",
    "~/Library/HTTPStorages/com.macpaw.zh.CleanMyMac#{version.major}.Updater",
    "~/Library/HTTPStorages/com.macpaw.zh.CleanMyMac#{version.major}",
    "~/Library/LaunchAgents/com.macpaw.zh.CleanMyMac#{version.major}.HealthMonitor.plist",
    "~/Library/LaunchAgents/com.macpaw.zh.CleanMyMac#{version.major}.Updater.plist",
    "~/Library/Logs/CleanMyMac X Menu",
    "~/Library/Logs/com.macpaw.zh.CleanMyMac#{version.major}",
    "~/Library/Preferences/*.com.macpaw.zh.CleanMyMac#{version.major}.plist",
    "~/Library/Preferences/com.macpaw.zh.CleanMyMac-#{version.major}-Helper.plist",
    "~/Library/Preferences/com.macpaw.zh.CleanMyMac#{version.major}.HealthMonitor.plist",
    "~/Library/Preferences/com.macpaw.zh.CleanMyMac#{version.major}.KnowledgeBase.plist",
    "~/Library/Preferences/com.macpaw.zh.CleanMyMac#{version.major}.Menu.plist",
    "~/Library/Preferences/com.macpaw.zh.CleanMyMac#{version.major}.plist",
    "~/Library/Preferences/com.macpaw.zh.CleanMyMac#{version.major}.Scheduler.plist",
    "~/Library/Saved Application State/com.macpaw.zh.CleanMyMac#{version.major}.savedState",
    "~/Library/WebKit/com.macpaw.zh.CleanMyMac#{version.major}",
    "~/Pictures/Photos Library.photoslibrary/private/com.macpaw.zh.CleanMyMac#{version.major}",
  ]
end
