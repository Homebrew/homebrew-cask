cask 'blockblock' do
  version '0.9.5'
  sha256 '1202120d4c2a64d53e8af575779c99c69635bb90eac8455cc4acdd7553a5fd58'

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
