cask 'cyberduck' do
  version '6.6.0.28133'
  sha256 '1dbd8c3e06f6358d962f417c236a3a7ffeae5fb03efc5df4bd4bc8968c9da0f7'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: '6a6d790018ebe2f1e0d44d7302aadf426bbf6ac9cc74f5b0855130f23ea6131c'
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
