cask 'riot' do
  version '0.13.1'
  sha256 '24fc4feb8d03d5793f9a6cd38665d0f8a1b2d4cb2f21bfee5357e84d965bbf63'

  url "https://riot.im/download/desktop/install/macos/Riot-#{version}.dmg"
  appcast 'https://github.com/vector-im/riot-web/releases.atom',
          checkpoint: 'dc496f84ae62082186c719e60ccc3f1c2fe50616c288ccc5ce0711ff76debbff'
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
