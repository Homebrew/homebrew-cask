cask 'cyberduck' do
  version '6.2.2.26027'
  sha256 '5a5216df134517b49cc1f40e5732fb3d361b97384620d093ff8c074c0737a058'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: '7507ff458eeaf235b325997174187a2f73c2031e31f9efbbd5de123bb81a1fe5'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
                '~/Library/Caches/ch.sudo.cyberduck',
              ]
end
