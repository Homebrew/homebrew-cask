cask 'blockblock' do
  version '0.9.4'
  sha256 'ae95c40ce4f33b4b46a62b925fb0bc0ef00c61a56c5c933c69316ff382ab397b'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/objective-see/deploy/downloads/BlockBlock_#{version}.zip"
  name 'BlockBlock'
  homepage 'https://objective-see.com/products/blockblock.html'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  installer :manual => 'BlockBlock_Installer.app'

  uninstall :quit      => 'com.objectivesee.BlockBlock',
            :launchctl => [
                            'com.objectiveSee.blockblock.agent',
                            'com.objectiveSee.blockblock.daemon',
                          ],
            :delete    => [
                            '/Applications/BlockBlock.app',
                            '/Library/LaunchDaemons/com.objectiveSee.blockblock.plist',
                            '~/Library/LaunchAgents/com.objectiveSee.blockblock.plist',
                          ]
end
