cask 'cleanmymac' do
  version '3.9.0,1506356831'
  sha256 '78d313cb337060dd4ee29c7de314c24fc2c03fc4e2279123a2f4adb1c42e1777'

  # devmate.com/com.macpaw.CleanMyMac was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.CleanMyMac#{version.major}/#{version.major_minor_patch}/#{version.after_comma}/CleanMyMac3-#{version.major_minor_patch}.zip"
  appcast "https://updates.devmate.com/com.macpaw.CleanMyMac#{version.major}.xml",
          checkpoint: 'd082cd25c528003761a8da74c67273a9220cfa721e70715db4c56e2067483ef1'
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
