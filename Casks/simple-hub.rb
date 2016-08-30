cask 'simple-hub' do
  version '4.5.3-1196'
  sha256 '5ad5c0afbb68da7b216edfdb4c7af0dd694578fbe730bcccfdf1f676729361c8'

  url "https://www.simplecontrol.com/b/SimpleHub-#{version.no_dots}.zip"
  appcast 'https://www.simplecontrol.com/b/Simple-HubAppcast.xml',
          checkpoint: '4890c9fa34119d7d4f5e022406a1c89e0cdeb693d3217a431083f92b51069ce3'
  name 'Simple Hub'
  homepage 'https://store.simplecontrol.com/simple-sync.html'
  license :commercial

  app 'Simple Hub.app'

  zap delete: [
                '~/Library/Application Support/Roomie Agent',
                '~/Library/Preferences/com.roomie.agent.plist',
              ]
end
