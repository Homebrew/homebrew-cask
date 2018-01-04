cask 'riot' do
  version '0.13.4'
  sha256 '100b102d9cdc6ecf528555619c71a42f3eed4be20d20784d32c8c094ba37ffa5'

  url "https://riot.im/download/desktop/install/macos/Riot-#{version}.dmg"
  appcast 'https://github.com/vector-im/riot-web/releases.atom',
          checkpoint: 'f86ea60e45f3858752688c2d1f326c4157696026e3ec45734b179b77377c9bbe'
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
