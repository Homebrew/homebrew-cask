cask 'riot' do
  version '1.3.6'
  sha256 '76d087fb8fb89d37c6fb304500ace0742ccc3589db40abfcda137ed2fcc01f75'

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
