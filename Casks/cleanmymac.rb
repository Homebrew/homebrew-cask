cask "cleanmymac" do
  version "4.10.0,41000.0.2112211205"
  sha256 "1f415dd5ff9fe03aba01ddbacd1c6e5fb972cf90f5798ac4d3e4ab88c137e230"

  url "https://dl.devmate.com/com.macpaw.CleanMyMac#{version.major}/CleanMyMacX.dmg",
      verified: "dl.devmate.com/com.macpaw.CleanMyMac"
  name "CleanMyMac X"
  desc "Tool to remove unnecessary files and folders from disk"
  homepage "https://macpaw.com/cleanmymac"

  livecheck do
    url "https://updates.devmate.com/com.macpaw.CleanMyMac#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true

  app "CleanMyMac X.app"

  uninstall delete:     "/Library/PrivilegedHelperTools/com.macpaw.CleanMyMac#{version.major}.Agent",
            launchctl:  [
              "com.macpaw.CleanMyMac#{version.major}.Agent",
              "com.macpaw.CleanMyMac#{version.major}.HealthMonitor",
              "com.macpaw.CleanMyMac#{version.major}.Menu",
              "com.macpaw.CleanMyMac#{version.major}.Scheduler",
              "com.macpaw.CleanMyMac#{version.major}.Updater",
            ],
            login_item: "CleanMyMac #{version.major} Menu",
            quit:       [
              "com.macpaw.CleanMyMac#{version.major}",
              "com.macpaw.CleanMyMac#{version.major}.HealthMonitor",
              "com.macpaw.CleanMyMac#{version.major}.Menu",
            ]

  zap trash: [
    "/Library/LaunchDaemons/com.macpaw.CleanMyMac#{version.major}.Agent.plist",
    "/Users/Shared/CleanMyMac X Menu",
    "/Users/Shared/CleanMyMac X",
    "~/Library/Application Scripts/com.macpaw.CleanMyMac#{version.major}.CleanMyMacWidget",
    "~/Library/Application Support/CleanMyMac X Menu",
    "~/Library/Application Support/CleanMyMac X",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macpaw.cleanmymac#{version.major}.scheduler.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macpaw.cleanmymac#{version.major}.sfl*",
    "~/Library/Caches/CleanMyMac #{version.major}",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.macpaw.CleanMyMac#{version.major}.help*",
    "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.HealthMonitor",
    "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.KnowledgeBase",
    "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.Menu",
    "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.Scheduler",
    "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.Updater",
    "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}",
    "~/Library/Containers/com.macpaw.CleanMyMac#{version.major}.CleanMyMacWidget",
    "~/Library/Group Containers/*.com.macpaw.CleanMyMac#{version.major}",
    "~/Library/LaunchAgents/com.macpaw.CleanMyMac#{version.major}.HealthMonitor.plist",
    "~/Library/LaunchAgents/com.macpaw.CleanMyMac#{version.major}.Updater.plist",
    "~/Library/Logs/CleanMyMac #{version.major}.log",
    "~/Library/Logs/CleanMyMac X Menu/HealthMonitor",
    "~/Library/Logs/com.macpaw.CleanMyMac#{version.major}",
    "~/Library/Preferences/com.macpaw.CleanMyMac-#{version.major}-Helper.plist",
    "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.HealthMonitor.plist",
    "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.KnowledgeBase.plist",
    "~/Library/Preferences/com.macpaw.cleanmymac#{version.major}.Menu.plist",
    "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.plist",
    "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.Scheduler.plist",
    "~/Library/WebKit/com.macpaw.CleanMyMac#{version.major}",
    "~/Pictures/Photos Library.photoslibrary/private/com.macpaw.CleanMyMac#{version.major}",
  ]
end
