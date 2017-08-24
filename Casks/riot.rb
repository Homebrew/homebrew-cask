cask 'riot' do
  version '0.12.2'
  sha256 '453ae7e1ebb31855312974e887efd419f22dc05d5bd58b65a308bbcf34fd345d'

  url "https://riot.im/download/desktop/install/macos/Riot-#{version}.dmg"
  appcast 'https://github.com/vector-im/riot-web/releases.atom',
          checkpoint: '1c984c31b9ac73a91e410732e586127a31cc80c03ccf1911ce8afa1cb32098cc'
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
