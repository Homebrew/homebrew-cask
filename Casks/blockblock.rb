cask 'blockblock' do
  version '0.9.6'
  sha256 '041f456f869579e414046be5b053a19e04d3cb4dc2f939e4d1652973520c0f3d'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/BlockBlock_#{version}.zip"
  appcast 'https://objective-see.com/products.json',
          checkpoint: '6a8d829ea5c7dfd7cc59f0b816512c6d7806b1e5ccbffa93fd14db9260266603'
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
