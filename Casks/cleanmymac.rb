cask "cleanmymac" do
  version "4.8.8,40808.0.2109011504"
  sha256 "fc8b911c15e1d2e897b9232f1e719d6cdfdf63121c9e011ed57018332c2ee73e"

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

  uninstall delete:     [
    "/Library/PrivilegedHelperTools/com.macpaw.CleanMyMac#{version.major}.Agent",
    "/private/var/run/com.macpaw.CleanMyMac#{version.major}.Agent.socket",
  ],
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
    "/Users/Shared/CleanMyMac X",
    "/Users/Shared/CleanMyMac X Menu",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macpaw.cleanmymac#{version.major}.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macpaw.cleanmymac#{version.major}.scheduler.sfl*",
    "~/Library/Application Support/CleanMyMac X",
    "~/Library/Application Support/CleanMyMac X Menu",
    "~/Library/Caches/CleanMyMac #{version.major}",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.macpaw.CleanMyMac#{version.major}.help*",
    "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}",
    "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.HealthMonitor",
    "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.KnowledgeBase",
    "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.Menu",
    "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.Scheduler",
    "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.Updater",
    "~/Library/LaunchAgents/com.macpaw.CleanMyMac#{version.major}.HealthMonitor.plist",
    "~/Library/LaunchAgents/com.macpaw.CleanMyMac#{version.major}.Updater.plist",
    "~/Library/Logs/CleanMyMac #{version.major}.log",
    "~/Library/Logs/CleanMyMac X Menu/HealthMonitor",
    "~/Library/Logs/com.macpaw.CleanMyMac#{version.major}",
    "~/Library/Preferences/com.macpaw.CleanMyMac-#{version.major}-Helper.plist",
    "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.HealthMonitor.plist",
    "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.KnowledgeBase.plist",
    "~/Library/Preferences/com.macpaw.cleanmymac#{version.major}.Menu.plist",
    "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.Scheduler.plist",
    "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.plist",
    "~/Pictures/Photos Library.photoslibrary/private/com.macpaw.CleanMyMac#{version.major}",
  ]
end
