cask 'blockblock' do
  version '0.9.7'
  sha256 '12be9b1f7a320222105f76404a2a7caf70555213c3d4f344a7a4a07f954083c5'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/BlockBlock_#{version}.zip"
  appcast 'https://objective-see.com/products.json',
          checkpoint: '89dae1300c90242339b554780b2592f96a3da1be144c26555b290f499e1abde5'
  name 'BlockBlock'
  homepage 'https://objective-see.com/products/blockblock.html'

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
end
