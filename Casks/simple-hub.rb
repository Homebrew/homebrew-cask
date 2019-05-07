cask 'simple-hub' do
  version '5.7.7-1882'
  sha256 '53ea514465ef8bf93de00cc05dcf58e6fedf0a1dfc39845aa956917c8de8487f'

  url "https://www.simplecontrol.com/b/SimpleHub-macOS-#{version.no_dots}.zip"
  appcast "https://www.simplecontrol.com/b/Simple-HubAppcast#{version.major}.xml"
  name 'Simple Hub'
  homepage 'https://www.simplecontrol.com/'

  depends_on macos: '>= :sierra'

  app 'Simple Hub.app'

  zap trash: [
               '~/Library/Application Support/Roomie Agent',
               '~/Library/Preferences/com.roomie.agent.plist',
             ]
end
