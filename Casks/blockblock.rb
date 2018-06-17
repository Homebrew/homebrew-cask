cask 'blockblock' do
  version '0.9.9.2'
  sha256 '76a447be2af4774d11210a0d14e55b08eb0a1a3311d69cfda4369cc173b720ab'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/BlockBlock_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/BlockBlock.txt'
  name 'BlockBlock'
  homepage 'https://objective-see.com/products/blockblock.html'

  depends_on macos: '>= :mavericks'

  installer script: {
                      executable: "#{staged_path}/BlockBlock_Installer.app/Contents/MacOS/BlockBlock",
                      args:       ['-install'],
                      sudo:       true,
                    }

  uninstall script: {
                      executable: "#{staged_path}/BlockBlock_Installer.app/Contents/MacOS/BlockBlock",
                      args:       ['-uninstall'],
                      sudo:       true,
                    }

  zap trash: '~/Library/Preferences/com.objectiveSee.BlockBlock.plist'
end
