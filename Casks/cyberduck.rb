cask 'cyberduck' do
  version '6.3.4.27404'
  sha256 '76f77ef616e95b54f96cb234c738955500d2c5fffbee98f592a6dccd8c58059e'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: '9ef1a072e43d5e5a02607878192c7e868557c4f5562b0d576563a15f99e2c761'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  app 'Cyberduck.app'

  zap trash: [
               '~/Library/Application Support/Cyberduck',
               '~/Library/Caches/ch.sudo.cyberduck',
               '~/Library/Preferences/ch.sudo.cyberduck.plist',
             ]
end
