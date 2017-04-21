cask 'simple-hub' do
  version '4.5.11-1304'
  sha256 '347bf4fd0eb1327d528d6acf2d9dde319cb63f435032cb16f7fd08a6fa269322'

  url "https://www.simplecontrol.com/b/SimpleHub-macOS-#{version.no_dots}.zip"
  appcast 'https://www.simplecontrol.com/b/Simple-HubAppcast.xml',
          checkpoint: '69326a906116116ea43b3292b8e438febdb3b0a1d7e93d1f29dfa62834d6adc9'
  name 'Simple Hub'
  homepage 'https://store.simplecontrol.com/simple-sync.html/'

  app 'Simple Hub.app'

  zap delete: [
                '~/Library/Application Support/Roomie Agent',
                '~/Library/Preferences/com.roomie.agent.plist',
              ]
end
