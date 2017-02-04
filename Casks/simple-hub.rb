cask 'simple-hub' do
  version '4.5.8-1271'
  sha256 'e5fb63cb351f9b804b5d9fd5a7e5596efe59f914c7fce28e95596d6a9a5563b1'

  url "https://www.simplecontrol.com/b/SimpleHub-#{version.no_dots}.zip"
  appcast 'https://www.simplecontrol.com/b/Simple-HubAppcast.xml',
          checkpoint: '930a2df33d838cbf49b4b1fcc082f5f0ccafd20e8cad165b4b5d9b456f4037fd'
  name 'Simple Hub'
  homepage 'https://store.simplecontrol.com/simple-sync.html'

  app 'Simple Hub.app'

  zap delete: [
                '~/Library/Application Support/Roomie Agent',
                '~/Library/Preferences/com.roomie.agent.plist',
              ]
end
