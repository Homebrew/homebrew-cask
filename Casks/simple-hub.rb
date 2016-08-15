cask 'simple-hub' do
  version '4.5.2-1184'
  sha256 '114e8f1dad9cdd1bb8ee6bbee97d1a91f28c17abe18d0a16b5fb07a531d7ff5e'

  url "https://www.simplecontrol.com/b/SimpleHub-#{version.no_dots}.zip"
  appcast 'https://www.simplecontrol.com/b/Simple-HubAppcast.xml',
          checkpoint: '8aedcdb3770706ee4a3b77b40f8d23719d77b16cc8f85fe0c4eb3a22f9b35a08'
  name 'Simple Hub'
  homepage 'https://store.simplecontrol.com/simple-sync.html'
  license :commercial

  app 'Simple Hub.app'

  zap delete: [
                '~/Library/Application Support/Roomie Agent',
                '~/Library/Preferences/com.roomie.agent.plist',
              ]
end
