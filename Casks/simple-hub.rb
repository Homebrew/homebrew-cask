cask 'simple-hub' do
  version '3.5.3-326'
  sha256 'bb5e1c74fc27b5f87471e77e7a7d24bbd83a17ccbd555a011260dd6689fa7e61'

  url "https://www.simplecontrol.com/b/SimpleHub-#{version.no_dots}.zip"
  appcast 'https://www.simplecontrol.com/b/Simple-HubAppcast.xml',
          checkpoint: '4ad96e6a4b2f55058311506f0dd3b6020fcbf4c7ce954ee216707bf8ecd207c9'
  name 'Simple Hub'
  homepage 'https://store.simplecontrol.com/simple-sync.html'
  license :commercial

  app 'Simple Hub.app'

  zap delete: [
                '~/Library/Application Support/Roomie Agent',
                '~/Library/Preferences/com.roomie.agent.plist',
              ]
end
