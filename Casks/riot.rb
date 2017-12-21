cask 'riot' do
  version '0.13.3'
  sha256 '59d3e16936ceb7f52fc6ad456fd6bcb1aeb258ce6ebe9a1d97b4bf23616da4fc'

  url "https://riot.im/download/desktop/install/macos/Riot-#{version}.dmg"
  appcast 'https://github.com/vector-im/riot-web/releases.atom',
          checkpoint: '6eb112447422c24e92e48d2d108e9b480699bae09856dcc68d613da9a4c53961'
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
