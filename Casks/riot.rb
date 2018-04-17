cask 'riot' do
  version '0.14.1'
  sha256 '6032488ad3a8512c309f233e67ccb63bd320344427a33b4206e0f0996ce01660'

  url "https://riot.im/download/desktop/install/macos/Riot-#{version}.dmg"
  appcast 'https://github.com/vector-im/riot-web/releases.atom',
          checkpoint: '9e7b494b3e81cff267c23aef0ff165ede170224c8cd0556878999caed8e3075f'
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
