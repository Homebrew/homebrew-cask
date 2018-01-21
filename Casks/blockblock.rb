cask 'blockblock' do
  version '0.9.9.1'
  sha256 'f51f8cf4120a6714c710e1a9d06dd2f7ad19f198910f9092c7822413e6a953ff'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/BlockBlock_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/BlockBlock.txt',
          checkpoint: 'f0abfa845ad922e4e5b645f65a52a90a75fb81fc1c27916fb24ba79b37aa1ea0'
  name 'BlockBlock'
  homepage 'https://objective-see.com/products/blockblock.html'

  depends_on macos: '>= :mavericks'

  installer script: {
                      executable: "#{staged_path}/BlockBlock.app/Contents/MacOS/BlockBlock",
                      args:       ['-install'],
                      sudo:       true,
                    }

  uninstall script: {
                      executable: "#{staged_path}/BlockBlock.app/Contents/MacOS/BlockBlock",
                      args:       ['-uninstall'],
                      sudo:       true,
                    }

  zap trash: '~/Library/Preferences/com.objectiveSee.BlockBlock.plist'
end
