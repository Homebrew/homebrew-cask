cask 'simple-sync' do
  version '3.2.1-283'
  sha256 '18108c06846933f22281d060db129e45194d2341e43f9b68e5fab793b0f48217'

  # roomieremote.com is the official download host per the vendor homepage
  url "https://www.roomieremote.com/b/SimpleSync-#{version.no_dots}.zip"
  appcast 'https://www.roomieremote.com/b/Simple-SyncAppcast.xml',
          checkpoint: '163f6cac5b18c68cc26f53cce7cbf4f1bff4cf2bed17c7583cd4c295928ac102'
  name 'Simple Sync'
  homepage 'https://simplecontrol.com/simple-sync'
  license :commercial

  app 'Simple Sync.app'

  zap delete: [
                '~/Library/Application Support/Roomie Agent',
                '~/Library/Preferences/com.roomie.agent.plist',
              ]
end
