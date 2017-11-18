cask 'cyberduck' do
  version '6.3.0.27105'
  sha256 'c1418eac70e9b5b637e35dedf85ef0b2bc1f5286e1b2eb89241dcfcb286921e4'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: '098caeb300d121bacf388d2ad359fca946719032295f6581f9e9ba4e8ce087b9'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  app 'Cyberduck.app'

  zap trash: [
               '~/Library/Application Support/Cyberduck',
               '~/Library/Caches/ch.sudo.cyberduck',
               '~/Library/Preferences/ch.sudo.cyberduck.plist',
             ]
end
