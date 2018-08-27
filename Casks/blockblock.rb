cask 'blockblock' do
  version '0.9.9.4'
  sha256 '6ab3a8224e8bc77b9abe8d41492c161454c6b0266e60e61b06931fed4b431282'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/BlockBlock_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/BlockBlock.txt'
  name 'BlockBlock'
  homepage 'https://objective-see.com/products/blockblock.html'

  depends_on macos: '>= :mavericks'

  installer script: {
                      executable: "#{staged_path}/BlockBlock Installer.app/Contents/MacOS/BlockBlock",
                      args:       ['-install'],
                      sudo:       true,
                    }

  uninstall script: {
                      executable: "#{staged_path}/BlockBlock Installer.app/Contents/MacOS/BlockBlock",
                      args:       ['-uninstall'],
                      sudo:       true,
                    }

  zap trash: '~/Library/Preferences/com.objectiveSee.BlockBlock.plist'
end
