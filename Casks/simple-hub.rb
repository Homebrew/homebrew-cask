cask 'simple-hub' do
  version '4.5.10-1291'
  sha256 '3a2e0a343acef22366e182a3ffbc7b967761ccea562d2c54dd01e33c508aa689'

  url "https://www.simplecontrol.com/b/SimpleHub-macOS-#{version.no_dots}.zip"
  appcast 'https://www.simplecontrol.com/b/Simple-HubAppcast.xml',
          checkpoint: '2c1e3005fe92e7b5969a010128ba63e0fe04f95691501d4424844ab6d33fac8d'
  name 'Simple Hub'
  homepage 'https://store.simplecontrol.com/simple-sync.html/'

  app 'Simple Hub.app'

  zap delete: [
                '~/Library/Application Support/Roomie Agent',
                '~/Library/Preferences/com.roomie.agent.plist',
              ]
end
