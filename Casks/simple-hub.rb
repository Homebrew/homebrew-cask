cask 'simple-hub' do
  version '5.6.1-1777'
  sha256 '35b2da18591ab9e474e68c05f806b8d87eb903bcaca8165b8e7301c9fce6553b'

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
