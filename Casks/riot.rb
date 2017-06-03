cask 'riot' do
  version '0.10.1'
  sha256 'f6e9924b2695cd98ac15d5c11bc2e0763fe765ca29bf5a5c2d7f5cee7243089d'

  url "https://riot.im/download/desktop/install/macos/Riot-#{version}.dmg"
  appcast 'https://github.com/vector-im/riot-web/releases.atom',
          checkpoint: '3cc69eb34a551a9799dc113a3672ad3ab9c837a26d6e02800b9d5a60a85caab0'
  name 'Riot'
  homepage 'https://about.riot.im/'

  app 'Riot.app'

  zap delete: [
                '~/Library/Application Support/Riot',
                '~/Library/Preferences/im.riot.app.helper.plist',
                '~/Library/Preferences/im.riot.app.plist',
                '~/Library/Saved Application State/im.riot.app.savedState',
              ]
end
