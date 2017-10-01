cask 'blockblock' do
  version '0.9.8'
  sha256 'c374461e3de75d0c258d48864ea76d4bbc5457340f41fd2b8bc51adde41542e2'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/BlockBlock_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/BlockBlock.txt',
          checkpoint: '47a60649e6d63911b95a8d522011287117e9c7bddf201580a8d4d2053e36131e'
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
