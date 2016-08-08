cask 'simple-hub' do
  version '4.5.0-1178'
  sha256 'ceb56d63d7cc8e44944e1f9b678119f2cfd6a9918f2a3257f8f4cb0754f0cbae'

  url "https://www.simplecontrol.com/b/SimpleHub-#{version.no_dots}.zip"
  appcast 'https://www.simplecontrol.com/b/Simple-HubAppcast.xml',
          checkpoint: '3c1293acc6638e287a6306924e34c6d8d5b2735293cb0d7268fb9f50d577c1d1'
  name 'Simple Hub'
  homepage 'https://store.simplecontrol.com/simple-sync.html'
  license :commercial

  app 'Simple Hub.app'

  zap delete: [
                '~/Library/Application Support/Roomie Agent',
                '~/Library/Preferences/com.roomie.agent.plist',
              ]
end
