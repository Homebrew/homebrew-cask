cask 'cyberduck' do
  version '5.4.0.23761'
  sha256 '6d517b4e9171d97ffb61533a24b9c0f746c6e8b10e64ef44e55fcfce65fac6d9'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: '2f3564b2dfd86268b037b13915f3cd4fabc7160e8c960520f93032dcd7a3d7ac'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
                '~/Library/Caches/ch.sudo.cyberduck',
              ]
end
