cask 'blockblock' do
  version '0.9.4'
  sha256 'ae95c40ce4f33b4b46a62b925fb0bc0ef00c61a56c5c933c69316ff382ab397b'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/BlockBlock_#{version}.zip"
  appcast 'https://objective-see.com/products.json',
          checkpoint: 'b2004932186e0eb176a9ac01fe499de292d502d7a17559e900822f9cdbfa74d6'
  name 'BlockBlock'
  homepage 'https://objective-see.com/products/blockblock.html'

  installer manual: 'BlockBlock_Installer.app'

  uninstall quit:      'com.objectivesee.BlockBlock',
            launchctl: [
                         'com.objectiveSee.blockblock.agent',
                         'com.objectiveSee.blockblock.daemon',
                       ],
            delete:    [
                         '/Applications/BlockBlock.app',
                         '/Library/LaunchDaemons/com.objectiveSee.blockblock.plist',
                         '~/Library/LaunchAgents/com.objectiveSee.blockblock.plist',
                       ]
end
