cask 'riot' do
  version '0.12.7'
  sha256 '905e165d94efd2eae0803f0e7fa972d88c43aa6a95cfd8f9e41d7b0e2d202003'

  url "https://riot.im/download/desktop/install/macos/Riot-#{version}.dmg"
  appcast 'https://github.com/vector-im/riot-web/releases.atom',
          checkpoint: '98b00a9a54ef0854ae165d3c597a407eccbaa2f36da3dc42b5c3f363c6842b4c'
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
