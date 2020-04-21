cask 'cyberduck' do
  version '7.3.0.32621'
  sha256 '73d3bc4cdf4039fba10c35a0094c0aeb6006158747de78fac1ca35ea16f836e6'

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
               '~/Library/Saved Application State/ch.sudo.cyberduck.savedState',
             ]
end
