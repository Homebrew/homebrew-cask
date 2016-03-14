cask 'simple-sync' do
  version '3.3.0-302'
  sha256 'cd87c46f1eeebf3925297d59795a893b554d38a588811310c1c9e5d5484af1ec'

  # roomieremote.com is the official download host per the vendor homepage
  url "https://www.roomieremote.com/b/SimpleSync-#{version.no_dots}.zip"
  appcast 'https://www.roomieremote.com/b/Simple-SyncAppcast.xml',
          checkpoint: 'ecfb4abcb7c66e0774a44fdc5908b5d7b33b83ade4d377686842559ecbfa1786'
  name 'Simple Sync'
  homepage 'https://simplecontrol.com/simple-sync'
  license :commercial

  app 'Simple Sync.app'

  zap delete: [
                '~/Library/Application Support/Roomie Agent',
                '~/Library/Preferences/com.roomie.agent.plist',
              ]
end
