cask 'cleanmymac' do
  version '4.4.4,1563283125'
  sha256 '234a7fa0dc6fb913a63b9af65186360c7cb83c69cdbcd1ca4ab3227f15eb79d9'

  # devmate.com/com.macpaw.CleanMyMac was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.CleanMyMac#{version.major}/#{version.major_minor_patch}/#{version.after_comma}/CleanMyMacX-#{version.major_minor_patch}.zip"
  appcast "https://updates.devmate.com/com.macpaw.CleanMyMac#{version.major}.xml"
  name 'CleanMyMac X'
  homepage 'https://macpaw.com/cleanmymac'

  app 'CleanMyMac X.app'

  uninstall delete:     [
                          "/Library/PrivilegedHelperTools/com.macpaw.CleanMyMac#{version.major}.Agent",
                          "/private/var/run/com.macpaw.CleanMyMac#{version.major}.Agent.socket",
                        ],
            launchctl:  [
                          "com.macpaw.CleanMyMac#{version.major}.Agent",
                          "com.macpaw.CleanMyMac#{version.major}.Scheduler",
                        ],
            login_item: "CleanMyMac #{version.major} Menu",
            quit:       [
                          "com.macpaw.CleanMyMac#{version.major}",
                          "com.macpaw.CleanMyMac#{version.major}.Menu",
                        ]

  zap trash: [
               "/Users/Shared/CleanMyMac #{version.major}",
               "/Users/Shared/CleanMyMac #{version.major} Menu",
               "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macpaw.cleanmymac#{version.major}.sfl*",
               "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macpaw.cleanmymac#{version.major}.scheduler.sfl*",
               "~/Library/Application Support/CleanMyMac #{version.major}",
               "~/Library/Application Support/CleanMyMac #{version.major} Menu",
               "~/Library/Caches/CleanMyMac #{version.major}",
               "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.macpaw.CleanMyMac#{version.major}.help*",
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
