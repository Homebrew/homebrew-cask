cask 'riot' do
  version '1.6.8'
  sha256 '4a03fb655c33d525995af5874aedfa3b5b2277ebf986e89f08564de222125c3b'

  url "https://packages.riot.im/desktop/install/macos/Riot-#{version}.dmg"
  appcast 'https://github.com/vector-im/riot-desktop/releases.atom'
  name 'Riot'
  homepage 'https://about.riot.im/'

  auto_updates true

  app 'Riot.app'

  zap trash: [
               '~/Library/Application Support/Riot',
               '~/Library/Caches/im.riot.app',
               '~/Library/Caches/im.riot.app.ShipIt',
               '~/Library/Logs/Riot',
               '~/Library/Preferences/im.riot.app.helper.plist',
               '~/Library/Preferences/im.riot.app.plist',
               '~/Library/Saved Application State/im.riot.app.savedState',
             ]
end
