cask 'oversight' do
  version '1.1.1'
  sha256 '9dc5b18b268fa17d9e23534b96dc01a069bf0ba332f781dd96e9b1320c3f67d3'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/OverSight_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/OverSight.txt',
          checkpoint: '61c5f81c8be807b7674f7e7ced5a4ca0b2c206b534473effbf5330f8732aa1b9'
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
