cask 'cyberduck' do
  version '5.4.4.23962'
  sha256 'bac70133ce58f432a5da4264525cdb941707d587a614dc5b9cb2bfc6e127d85f'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: 'b50b9fc667e3717cd9ccbebda9e86eda50f7f38d72146f19e8d9bec15bacdb47'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
                '~/Library/Caches/ch.sudo.cyberduck',
              ]
end
