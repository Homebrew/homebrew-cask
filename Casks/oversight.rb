cask 'oversight' do
  version '1.1.0'
  sha256 'a1798c555f34f3d9e66c23edcb0add55fbdc554a2c6b40177e2281b0ebc585be'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/OverSight_#{version}.zip"
  appcast 'https://objective-see.com/products/versions/oversight.json',
          checkpoint: 'cd2bf3138784a13e5d52b5b1d61959e6084ccca4458eb4cace4e4f8fd8de397d'
  name 'OverSight'
  homepage 'https://objective-see.com/products/oversight.html'

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
              ]
end
