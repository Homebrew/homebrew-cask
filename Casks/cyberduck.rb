cask 'cyberduck' do
  version '6.2.6.26405'
  sha256 '606c11b4e7a5af15e692b54f48c65ae795936a77f9f6c3339dbbaed05118ff2c'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: 'dd8946f8c9a4718e6ce0ad8d5e176a04d08fc943dd916f1c16a764453a08f1cd'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
                '~/Library/Caches/ch.sudo.cyberduck',
              ]
end
