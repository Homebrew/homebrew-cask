cask 'simple-hub' do
  version '4.5.6-1227'
  sha256 'e1dffd459300da8d64534298ee598f981898fa35db72a4508da78566661df175'

  url "https://www.simplecontrol.com/b/SimpleHub-#{version.no_dots}.zip"
  appcast 'https://www.simplecontrol.com/b/Simple-HubAppcast.xml',
          checkpoint: 'e20a1dbab073713ded48aee9a9c527584ae913bc723190359d3516027e1cac8f'
  name 'Simple Hub'
  homepage 'https://store.simplecontrol.com/simple-sync.html'

  app 'Simple Hub.app'

  zap delete: [
                '~/Library/Application Support/Roomie Agent',
                '~/Library/Preferences/com.roomie.agent.plist',
              ]
end
