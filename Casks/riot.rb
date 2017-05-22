cask 'riot' do
  version '0.9.9'
  sha256 'ca2df7bfa4516ee50723f03e26e825ea80177f39766ef16d4658610e846e2feb'

  url "https://riot.im/download/desktop/install/macos/Riot-#{version}.dmg"
  appcast 'https://github.com/vector-im/riot-web/releases.atom',
          checkpoint: '0d6bfa6ff69f885d473fab4e761af6b81096a83e8c626c4ab0165905e43861e5'
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
