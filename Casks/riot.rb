cask 'riot' do
  version '0.15.3'
  sha256 '0a34681593f0a2e62cae73ecfca3ba7e6aedaed0cf88c4f12998cf250b19a873'

  url "https://riot.im/download/desktop/install/macos/Riot-#{version}.dmg"
  appcast 'https://github.com/vector-im/riot-web/releases.atom',
          checkpoint: '09abacf513b6b8cb1a4bd41f82ff1f8809e38608666d0818d399dbc750bbaa69'
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
