cask 'cleanmymac' do
  version '3.8.6,1502978490'
  sha256 '4876af6dfb278d76b94acf940aefaac967e10ddd3a0fc6b6b1c0790a0046b841'

  # devmate.com/com.macpaw.CleanMyMac was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.CleanMyMac#{version.major}/#{version.major_minor_patch}/#{version.after_comma}/CleanMyMac3-#{version.major_minor_patch}.zip"
  appcast "https://updates.devmate.com/com.macpaw.CleanMyMac#{version.major}.xml",
          checkpoint: 'c8259247e8037cce1567c3ed7225478c24da4c4930676269a07cc1f38a2d593f'
  name 'CleanMyMac'
  homepage 'https://macpaw.com/cleanmymac'

  app "CleanMyMac #{version.major}.app"

  uninstall delete:     "/Library/PrivilegedHelperTools/com.macpaw.CleanMyMac#{version.major}.Agent",
            launchctl:  [
                          "com.macpaw.CleanMyMac#{version.major}.Agent",
                          "com.macpaw.CleanMyMac#{version.major}.Scheduler",
                        ],
            login_item: "CleanMyMac #{version.major} Menu",
            quit:       [
                          "com.macpaw.CleanMyMac#{version.major}",
                          "com.macpaw.CleanMyMac#{version.major}.Menu",
                        ]

  zap delete: [
                "/private/var/run/com.macpaw.CleanMyMac#{version.major}.Agent.socket",
                "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macpaw.cleanmymac#{version.major}.sfl",
                "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macpaw.cleanmymac#{version.major}.scheduler.sfl",
              ],
      trash:  [
                "/Users/Shared/CleanMyMac #{version.major}",
                "/Users/Shared/CleanMyMac #{version.major} Menu",
                "~/Library/Application Support/CleanMyMac #{version.major}",
                "~/Library/Application Support/CleanMyMac #{version.major} Menu",
                "~/Library/Caches/CleanMyMac #{version.major}",
                "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.macpaw.CleanMyMac#{version.major}.help",
                "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}",
                "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.KnowledgeBase",
                "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.Menu",
                "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.Scheduler",
                "~/Library/Logs/CleanMyMac #{version.major}.log",
                "~/Library/Logs/com.macpaw.CleanMyMac#{version.major}",
                "~/Library/Preferences/com.macpaw.CleanMyMac-#{version.major}-Helper.plist",
                "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.KnowledgeBase.plist",
                "~/Library/Preferences/com.macpaw.cleanmymac#{version.major}.menu.plist",
                "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.Scheduler.plist",
                "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.plist",
                "~/Pictures/Photos Library.photoslibrary/private/com.macpaw.CleanMyMac#{version.major}",
              ]
end
