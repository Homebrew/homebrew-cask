cask 'cyberduck' do
  version '5.3.8.23611'
  sha256 '61242083d9a5c0116cccf87ef15ff919e7d93265701e8859beb049a56bf0ebee'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: '06933ed8443c84a7f47c5a243052cc902f07b7bae2553053a9da44780882bbb0'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
                '~/Library/Caches/ch.sudo.cyberduck',
              ]
end
