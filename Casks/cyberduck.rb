cask 'cyberduck' do
  version '6.4.6.27773'
  sha256 'a3d43d37d75f6f6c93c4af84e93e1cd3d8ff64ec224730b454482e8b3ec9025c'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: '50b75fd78b40d1d0b87c206565b6db346b979bcd24440f6fd56538a65ea6e212'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  auto_updates true

  app 'Cyberduck.app'

  zap trash: [
               '~/Library/Application Support/Cyberduck',
               '~/Library/Caches/ch.sudo.cyberduck',
               '~/Library/Preferences/ch.sudo.cyberduck.plist',
             ]
end
