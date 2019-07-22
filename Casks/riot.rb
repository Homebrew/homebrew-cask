cask 'riot' do
  version '1.3.0'
  sha256 '15f23f1f95be5c37dcadd3d9aebb185be1cb9fb95a2280857aac265bc7d2ae3e'

  url "https://packages.riot.im/desktop/install/macos/Riot-#{version}.dmg"
  appcast 'https://riot.im/download/desktop/'
  name 'Riot'
  homepage 'https://about.riot.im/'

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
