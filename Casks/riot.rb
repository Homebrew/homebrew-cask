cask 'riot' do
  version '1.6.2'
  sha256 '01b47de510674aba25211369c389bc07da038d1cb624a4d9477c6509f3d07b39'

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
