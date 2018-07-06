cask 'simple-hub' do
  version '5.0.5-1565'
  sha256 'df168e883cbd389d7df1ffaef1087807af038dbcbec837e0994add95f732cc54'

  url "https://www.simplecontrol.com/b/SimpleHub-macOS-#{version.no_dots}.zip"
  appcast 'https://www.simplecontrol.com/b/Simple-HubAppcast.xml'
  name 'Simple Hub'
  homepage 'https://store.simplecontrol.com/simple-sync.html/'

  app 'Simple Hub.app'

  zap trash: [
               '~/Library/Application Support/Roomie Agent',
               '~/Library/Preferences/com.roomie.agent.plist',
             ]
end
