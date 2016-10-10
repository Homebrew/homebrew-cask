cask 'simple-hub' do
  version '4.5.4-1206'
  sha256 '540d0ec88c762f325680a610aa6dd8abfc56fadc97ca6e04fb809c339005cd30'

  url "https://www.simplecontrol.com/b/SimpleHub-#{version.no_dots}.zip"
  appcast 'https://www.simplecontrol.com/b/Simple-HubAppcast.xml',
          checkpoint: 'c2f0e32897a18d616e5fb8fcc57597133f1c0b1ba511af56db2d84a463f8578d'
  name 'Simple Hub'
  homepage 'https://store.simplecontrol.com/simple-sync.html'

  app 'Simple Hub.app'

  zap delete: [
                '~/Library/Application Support/Roomie Agent',
                '~/Library/Preferences/com.roomie.agent.plist',
              ]
end
