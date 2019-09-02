cask 'cyberduck' do
  version '7.0.2.30998'
  sha256 '54478aabcc93f5d0441340929381aefa7f21ed643c15324a79542e4905f463cb'

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
