cask 'cyberduck' do
  version '6.7.0.28613'
  sha256 '624cab96feda6c9910899814943c22a6e81bb5383d6be7115f36b43e84b52a9e'

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
