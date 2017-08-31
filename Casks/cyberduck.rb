cask 'cyberduck' do
  version '6.2.3.26209'
  sha256 '8d284a49b35dfec33c1cde8a184072e8a6b8a2607b82482b131730ec496735d0'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: 'c0a2ec2fbc0abfbe5d1e047156beceade0bf783378fc90ae9c294622cc159737'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
                '~/Library/Caches/ch.sudo.cyberduck',
              ]
end
