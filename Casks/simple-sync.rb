cask 'simple-sync' do
  version '3.2.0-281'
  sha256 'fa993287dbd272f69d08b7a60b671af5c8be2f2bdceed9b171255fabcd1fef41'

  # roomieremote.com is the official download host per the vendor homepage
  url "https://www.roomieremote.com/b/SimpleSync-#{version.no_dots}.zip"
  appcast 'https://www.roomieremote.com/b/Simple-SyncAppcast.xml',
          checkpoint: '4287e03e4806162ae0baf238745843e6c724cf5b5756d259e17c3569117eb30f'
  name 'Simple Sync'
  homepage 'https://simplecontrol.com/simple-sync'
  license :commercial

  app 'Simple Sync.app'

  zap delete: [
                '~/Library/Application Support/Roomie Agent',
                '~/Library/Preferences/com.roomie.agent.plist',
              ]
end
