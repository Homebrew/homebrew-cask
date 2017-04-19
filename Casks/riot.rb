cask 'riot' do
  version '0.9.8'
  sha256 'd5611b1ef8fd811c6fc2b20fc76c1788e3008b89a3566521ad860f8012e5dbe9'

  url "https://riot.im/download/desktop/install/macos/Riot-#{version}.dmg"
  appcast 'https://github.com/vector-im/riot-web/releases.atom',
          checkpoint: 'bf8534d3a086f932106b41609e1d388212e999e2c9ae6cfd3c27a02f51a76afc'
  name 'Riot'
  homepage 'https://riot.im/'

  app 'Riot.app'

  zap delete: [
                '~/Library/Application Support/Riot',
                '~/Library/Preferences/im.riot.app.helper.plist',
                '~/Library/Preferences/im.riot.app.plist',
                '~/Library/Saved Application State/im.riot.app.savedState',
              ]
end
