cask 'riot' do
  version '1.0.2'
  sha256 '6bd69bfd1dd2338b510ca719e30abf3568521e44f398ab481e9d24b8633db0ea'

  url "https://riot.im/download/desktop/install/macos/Riot-#{version}.dmg"
  appcast 'https://riot.im/desktop.html'
  name 'Riot'
  homepage 'https://about.riot.im/'

  app 'Riot.app'

  zap trash: [
               '~/Library/Application Support/Riot',
               '~/Library/Preferences/im.riot.app.helper.plist',
               '~/Library/Preferences/im.riot.app.plist',
               '~/Library/Saved Application State/im.riot.app.savedState',
             ]
end
