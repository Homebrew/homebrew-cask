cask 'oversight' do
  version '1.1.2'
  sha256 '4d930136f7e99880f7fb98cd195c47ee69b011c726be1e860ee4b43546386bd5'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/OverSight_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/OverSight.txt',
          checkpoint: '4ecde116ebc77bdb2c8e173ff7760b69ff57c84376cd1144b22d2408bf126e79'
  name 'OverSight'
  homepage 'https://objective-see.com/products/oversight.html'

  depends_on macos: '>= :yosemite'

  installer script: {
                      executable: "#{staged_path}/OverSight_Installer.app/Contents/MacOS/OverSight_Installer",
                      args:       ['-install'],
                      sudo:       true,
                    }

  uninstall script: {
                      executable: "#{staged_path}/OverSight_Installer.app/Contents/MacOS/OverSight_Installer",
                      args:       ['-uninstall'],
                      sudo:       true,
                    }

  zap delete: [
                '~/Library/Preferences/com.objective-see.OverSight.plist',
                '~/Library/Application Support/Objective-See/OverSight',
                '~/Library/Caches/com.objective-see.OverSightHelper',
              ]
end
