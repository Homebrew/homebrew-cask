cask 'cyberduck' do
  version '7.3.1.32784'
  sha256 '0bbfce490817cc6f164ace43f8a8d852d2f3c74aea440430a5bb109c3f7059cf'

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
               '~/Library/Saved Application State/ch.sudo.cyberduck.savedState',
             ]
end
