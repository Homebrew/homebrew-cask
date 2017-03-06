cask 'cyberduck' do
  version '5.3.9.23624'
  sha256 'de2e7888c9e96c82996ac932e7a0075f86db1c5bda33cb626204e774d553e7e1'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: '06933ed8443c84a7f47c5a243052cc902f07b7bae2553053a9da44780882bbb0'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
                '~/Library/Caches/ch.sudo.cyberduck',
              ]
end
