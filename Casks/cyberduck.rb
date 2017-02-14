cask 'cyberduck' do
  version '5.3.5.23361'
  sha256 '5a6db5ea7e4f2ded0c65e5f2ca330ac4408b41a55573099efafbb3d544cd56a8'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: '3003f54cd1d83fb6c34190ce369e43b90d7fab26ed2876e3a82b4cc3829f1d12'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
                '~/Library/Caches/ch.sudo.cyberduck',
              ]
end
