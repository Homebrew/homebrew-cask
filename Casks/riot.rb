cask 'riot' do
  version '0.12.4'
  sha256 '4353d9c343574960404734de56f331a3a73d1e237eaeb88296acde2553635bc7'

  url "https://riot.im/download/desktop/install/macos/Riot-#{version}.dmg"
  appcast 'https://github.com/vector-im/riot-web/releases.atom',
          checkpoint: 'e26202132045f455c4f059952c32e8acb567d6d76d26cdae606733bf0c408067'
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
