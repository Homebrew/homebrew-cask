cask 'riot' do
  version '1.6.5'
  sha256 '87e5e6cd94619622695ee37ec7b108511c728d4c9010364de5d39fd7ba9994ce'

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
