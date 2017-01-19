cask 'cyberduck' do
  version '5.3.2.23205'
  sha256 '24d4ac3a5a6ec5c03819fd93bd8100416373db2e01abc4d0ea65597dc73c4424'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: 'b0cf91e75f09df32d0c64011f57674a87ffcd40dac76315068ddeea62ece76cf'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
                '~/Library/Caches/ch.sudo.cyberduck',
              ]
end
