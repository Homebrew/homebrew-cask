cask 'cyberduck' do
  version '6.9.3.30061'
  sha256 'eec0f5784ebfb55b29e9dbb64c3e720231c749f47593b21d40df474a77c660bb'

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
