cask 'simple-hub' do
  version '3.5.4-341'
  sha256 '80442edb0db21b247ead0a56a645453ceb23bc361f26dba3d2d1359e2fe384c0'

  url "https://www.simplecontrol.com/b/SimpleHub-#{version.no_dots}.zip"
  appcast 'https://www.simplecontrol.com/b/Simple-HubAppcast.xml',
          checkpoint: 'e14bfc0223b32aad19294df061da3a5690a559088db6522e976dec38b5740018'
  name 'Simple Hub'
  homepage 'https://store.simplecontrol.com/simple-sync.html'
  license :commercial

  app 'Simple Hub.app'

  zap delete: [
                '~/Library/Application Support/Roomie Agent',
                '~/Library/Preferences/com.roomie.agent.plist',
              ]
end
