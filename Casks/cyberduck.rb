cask 'cyberduck' do
  version '4.8.4.19355'
  sha256 'a1a2f8390988fd0d147c399171987124330d886d9b93e40e8e533d02b6acfa93'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: '9425b08abea0028053d2b15988ec3d63a6d60b425b53b1fe08f646d52e38bd1b'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'
  license :gpl

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
              ]
end
