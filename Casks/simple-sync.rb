cask 'simple-sync' do
  version '3.3.2-311'
  sha256 '0621eb3b280aba2eb226b8834c63f5d5d3fe28420321637813ef13ae513d612f'

  # roomieremote.com is the official download host per the vendor homepage
  url "https://www.roomieremote.com/b/SimpleSync-#{version.no_dots}.zip"
  appcast 'https://www.roomieremote.com/b/Simple-SyncAppcast.xml',
          checkpoint: 'd654e0a2835cdc34f8a89bd8a05f16dd436e8be7d620b947714a3725a988b1a8'
  name 'Simple Sync'
  homepage 'https://simplecontrol.com/simple-sync'
  license :commercial

  app 'Simple Sync.app'

  zap delete: [
                '~/Library/Application Support/Roomie Agent',
                '~/Library/Preferences/com.roomie.agent.plist',
              ]
end
