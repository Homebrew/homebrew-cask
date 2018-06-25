cask 'cyberduck' do
  version '6.6.2.28219'
  sha256 '6fd08f34e3ab63aa96baceecca00baacce2f7107e8b2a5e41bd2451f6ac31197'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss'
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
