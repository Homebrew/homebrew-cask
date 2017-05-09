cask 'cyberduck' do
  version '6.0.0.24625'
  sha256 'ce2e001c8667a110d59decf559f79ec92c1df7a1ac59eb21d9d3e28da7767f7e'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: '5b6e87379fa39e0fd10fa030f838248a38730a00a09ed71d1b7169e5a4878b9c'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
                '~/Library/Caches/ch.sudo.cyberduck',
              ]
end
