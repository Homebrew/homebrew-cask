cask 'cyberduck' do
  version '5.3.4.23328'
  sha256 '9a09b520d750af541ea87bd3858148dfc16d7ca6c23aff598a0b85bc1a920e22'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: 'a258e3ac570ca56e0bd62906a5af21278578e1e271067ac8bf6f6f4ede70332a'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
                '~/Library/Caches/ch.sudo.cyberduck',
              ]
end
