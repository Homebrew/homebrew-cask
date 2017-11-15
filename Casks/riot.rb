cask 'riot' do
  version '0.13.0'
  sha256 'eec87f7bb11c8ad0e50189327c5ebead6a386c84aa2f42d3d87ed8498e1cbefc'

  url "https://riot.im/download/desktop/install/macos/Riot-#{version}.dmg"
  appcast 'https://github.com/vector-im/riot-web/releases.atom',
          checkpoint: 'ecb2125693ffd99730e68cc8d9848593c5d5f26b50ec7da0f6e353892cac2298'
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
