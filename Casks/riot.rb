cask 'riot' do
  version '0.11.4'
  sha256 'c65f00ea0519a9c2b80a9f98a67f4a19249552994da4add0dfeb0aa3845f68ea'

  url "https://riot.im/download/desktop/install/macos/Riot-#{version}.dmg"
  appcast 'https://github.com/vector-im/riot-web/releases.atom',
          checkpoint: '70194e6b968c97cb415cee23abcd2f4aaca253597860ab377c136dd54a0ce718'
  name 'Riot'
  homepage 'https://about.riot.im/'

  app 'Riot.app'

  zap delete: [
                '~/Library/Application Support/Riot',
                '~/Library/Preferences/im.riot.app.helper.plist',
                '~/Library/Preferences/im.riot.app.plist',
                '~/Library/Saved Application State/im.riot.app.savedState',
              ]
end
