cask 'simple-hub' do
  version '5.6.1-1777'
  sha256 '3519df0c5ce82a57683a624ac10d2f7e209e71ad7e6e0d2f802fe53f1477780a'

  url "https://www.simplecontrol.com/b/SimpleHub-macOS-#{version.no_dots}.zip"
  appcast 'https://www.simplecontrol.com/b/Simple-HubAppcast5.xml'
  name 'Simple Hub'
  homepage 'https://www.simplecontrol.com/'

  app 'Simple Hub.app'

  zap trash: [
               '~/Library/Application Support/Roomie Agent',
               '~/Library/Preferences/com.roomie.agent.plist',
             ]
end
