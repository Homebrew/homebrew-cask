cask 'cyberduck' do
  version '5.2.0.21317'
  sha256 '733d12225c26ad713e0c1e479c593803b579b8b3a441f9a68a270253b49b2291'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: 'c683cf68dfc0e97b6f611b84ac092545ba9f4d3eb2c2de27f06a87d31c2c9db6'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
                '~/Library/Caches/ch.sudo.cyberduck',
              ]
end
