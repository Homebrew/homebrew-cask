cask 'cyberduck' do
  version '7.2.5.32097'
  sha256 '864b413bde0fe5fb325c6acc62700a8e1081ab144a098a0579862fddc9ea0b58'

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
