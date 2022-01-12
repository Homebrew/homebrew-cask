cask "cleanmymac" do
  language "en", default: true do
    version "4.10.0,41000.0.2112211205"
    sha256 "1f415dd5ff9fe03aba01ddbacd1c6e5fb972cf90f5798ac4d3e4ab88c137e230"

    url "https://dl.devmate.com/com.macpaw.CleanMyMac#{version.major}/CleanMyMacX.dmg",
        verified: "dl.devmate.com/com.macpaw.CleanMyMac"

    livecheck do
      url "https://s3-us-west-2.amazonaws.com/updateinfo.devmate.com/com.macpaw.CleanMyMac#{version.major}/updates.xml"
      strategy :sparkle
    end
    ""
  end
  language "zh", "CN", "zh-CN" do
    version "4.10.0,41000.0.2112201815"
    sha256 "c2c63fe19526706cff20d42262c9f737bd424508b913deb5fd3a0d0536b0579c"

    url "https://dl.devmate.com/com.macpaw.zh.CleanMyMac#{version.major}/CleanMyMacXChinese.dmg",
        verified: "dl.devmate.com/com.macpaw.zh.CleanMyMac"

    livecheck do
      url "https://s3-us-west-2.amazonaws.com/updateinfo.devmate.com/com.macpaw.zh.CleanMyMac#{version.major}/updates.xml"
      strategy :sparkle
    end
    ".zh"
  end

  name "CleanMyMac X"
  desc "Tool to remove unnecessary files and folders from disk"
  homepage "https://macpaw.com/cleanmymac"

  auto_updates true

  app "CleanMyMac X.app"

  uninstall delete:     [
    "/Library/LaunchDaemons/com.macpaw#{language}.CleanMyMac#{version.major}.Agent.plist",
    "/Library/PrivilegedHelperTools/com.macpaw#{language}.CleanMyMac#{version.major}.Agent",
  ],
            launchctl:  [
              "com.macpaw#{language}.CleanMyMac#{version.major}.Agent",
              "com.macpaw#{language}.CleanMyMac#{version.major}.HealthMonitor",
              "com.macpaw#{language}.CleanMyMac#{version.major}.Menu",
              "com.macpaw#{language}.CleanMyMac#{version.major}.Scheduler",
              "com.macpaw#{language}.CleanMyMac#{version.major}.Updater",
            ],
            login_item: "CleanMyMac #{version.major} Menu",
            quit:       [
              "com.macpaw#{language}.CleanMyMac#{version.major}",
              "com.macpaw#{language}.CleanMyMac#{version.major}.HealthMonitor",
              "com.macpaw#{language}.CleanMyMac#{version.major}.Menu",
            ]

  zap trash: [
    "/Users/Shared/CleanMyMac-X Menu",
    "/Users/Shared/CleanMyMac-X",
    "~/Library/Application Scripts/com.macpaw#{language}.CleanMyMac#{version.major}.CleanMyMacWidget",
    "~/Library/Application Support/CleanMyMac-X Menu",
    "~/Library/Application Support/CleanMyMac-X",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macpaw#{language}.CleanMyMac#{version.major}.scheduler.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macpaw#{language}.CleanMyMac#{version.major}.sfl*",
    "~/Library/Caches/CleanMyMac #{version.major}",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.macpaw#{language}.CleanMyMac#{version.major}.help*",
    "~/Library/Caches/com.macpaw#{language}.CleanMyMac#{version.major}",
    "~/Library/Caches/com.macpaw#{language}.CleanMyMac#{version.major}.HealthMonitor",
    "~/Library/Caches/com.macpaw#{language}.CleanMyMac#{version.major}.KnowledgeBase",
    "~/Library/Caches/com.macpaw#{language}.CleanMyMac#{version.major}.Menu",
    "~/Library/Caches/com.macpaw#{language}.CleanMyMac#{version.major}.Scheduler",
    "~/Library/Caches/com.macpaw#{language}.CleanMyMac#{version.major}.Updater",
    "~/Library/Containers/com.macpaw#{language}.CleanMyMac#{version.major}.CleanMyMacWidget",
    "~/Library/Group Containers/*.com.macpaw#{language}.CleanMyMac#{version.major}",
    "~/Library/HTTPStorages/com.macpaw#{language}.CleanMyMac#{version.major}",
    "~/Library/HTTPStorages/com.macpaw#{language}.CleanMyMac#{version.major}.Menu",
    "~/Library/HTTPStorages/com.macpaw#{language}.CleanMyMac#{version.major}.Updater",
    "~/Library/HTTPStorages/com.macpaw#{language}.CleanMyMac#{version.major}.binarycookies",
    "~/Library/LaunchAgents/com.macpaw#{language}.CleanMyMac#{version.major}.HealthMonitor.plist",
    "~/Library/LaunchAgents/com.macpaw#{language}.CleanMyMac#{version.major}.Updater.plist",
    "~/Library/Logs/CleanMyMac X Menu",
    "~/Library/Logs/com.macpaw#{language}.CleanMyMac#{version.major}",
    "~/Library/Preferences/*.com.macpaw#{language}.CleanMyMac#{version.major}.plist",
    "~/Library/Preferences/com.macpaw#{language}.CleanMyMac#{version.major}.HealthMonitor.plist",
    "~/Library/Preferences/com.macpaw#{language}.CleanMyMac#{version.major}.KnowledgeBase.plist",
    "~/Library/Preferences/com.macpaw#{language}.CleanMyMac#{version.major}.Menu.plist",
    "~/Library/Preferences/com.macpaw#{language}.CleanMyMac#{version.major}.Scheduler.plist",
    "~/Library/Preferences/com.macpaw#{language}.CleanMyMac#{version.major}.plist",
    "~/Library/Preferences/com.macpaw#{language}.CleanMyMac-#{version.major}-Helper.plist",
    "~/Library/Saved Application State/com.macpaw#{language}.CleanMyMac#{version.major}.savedState",
    "~/Library/WebKit/com.macpaw#{language}.CleanMyMac#{version.major}",
    "~/Pictures/Photos Library.photoslibrary/private/com.macpaw#{language}.CleanMyMac#{version.major}",
  ]
end
