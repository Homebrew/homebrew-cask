cask 'cyberduck' do
  version '4.8.3.19083'
  sha256 '4ef2b4291664c29a0f1e54e01f781b3e4a10ad5d444e5a986b46ea6c0a639b94'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: 'be2cf8cfc1f9e245781f358b8e626b80a1d3c882fbffe43703f828a981b8634b'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'
  license :gpl

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
              ]
end
