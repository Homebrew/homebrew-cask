cask 'cyberduck' do
  version '5.3.7.23440'
  sha256 'd4893a669d413ff691167f0afdc73d6fe736753ace7c6990eda9d5ae00294d31'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: '8df61d456c80d69a15188136d45bda41b0b5f4cd05077131868204bdba1ed46c'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
                '~/Library/Caches/ch.sudo.cyberduck',
              ]
end
