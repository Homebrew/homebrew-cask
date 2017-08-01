cask 'cleanmymac' do
  version '3.8.4,1496162968'
  sha256 '01cd0c843326b630e86b86792c27eb17b9fd3e9335104e99c570221d471a1c82'

  # devmate.com/com.macpaw.CleanMyMac was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.CleanMyMac#{version.major}/#{version.major_minor_patch}/#{version.after_comma}/CleanMyMac3-#{version.major_minor_patch}.zip"
  appcast "https://updates.devmate.com/com.macpaw.CleanMyMac#{version.major}.xml",
          checkpoint: 'b1e440df9e2adfb17bd080bec94450161f1f72d0a5cd26303592f9217b61c073'
  name 'CleanMyMac'
  homepage 'https://macpaw.com/cleanmymac'

  app "CleanMyMac #{version.major}.app"

  uninstall launchctl: [
                         "com.macpaw.CleanMyMac#{version.major}.Agent",
                         "com.macpaw.CleanMyMac#{version.major}.Scheduler",
                       ]

  zap delete: [
                "/Library/LaunchDaemons/com.macpaw.CleanMyMac#{version.major}.Agent.plist",
                "/Library/PrivilegedHelperTools/com.macpaw.CleanMyMac#{version.major}.Agent",
                "/Users/Shared/CleanMyMac #{version.major}",
                "/private/var/run/com.macpaw.CleanMyMac#{version.major}.Agent.socket",
                "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macpaw.cleanmymac#{version.major}.sfl",
                "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macpaw.cleanmymac#{version.major}.scheduler.sfl",
                "~/Library/Application Support/CleanMyMac #{version.major}",
                "~/Library/Application Support/CleanMyMac #{version.major} Menu",
                "~/Library/Caches/CleanMyMac #{version.major}",
                "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.macpaw.CleanMyMac#{version.major}.help",
                "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}",
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
