cask 'blockblock' do
  version '0.9.7'
  sha256 '12be9b1f7a320222105f76404a2a7caf70555213c3d4f344a7a4a07f954083c5'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/BlockBlock_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/BlockBlock.txt',
          checkpoint: 'e61c1c20e0447c983b548ae6939666608fb5c0ecade0ce2179186e580054f731'
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

  zap delete: '~/Library/Preferences/com.objectiveSee.BlockBlock.plist'
end
