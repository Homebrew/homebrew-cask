cask 'riot' do
  version '1.5.6'
  sha256 'a57ed2df680f9b9c0da09d588bee56e944f3e1e224381c2f5cd11e68c97f38b3'

  url "https://packages.riot.im/desktop/install/macos/Riot-#{version}.dmg"
  appcast 'https://riot.im/download/desktop/'
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
