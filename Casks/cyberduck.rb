cask :v1 => 'cyberduck' do
  version '4.7.1'
  sha256 'a55d780abf7b90e722a938d08dbc07e581876c9427deac4b369c4bdb91eb854b'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          :sha256 => 'ca43c0c0464d9ef63cfbbef02aac5b3b0da921710305da1b89f355255a664039'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'
  license :gpl

  app 'Cyberduck.app'

  zap :delete => [
                  '~/Library/Application Support/Cyberduck',
                  '~/Library/Preferences/ch.sudo.cyberduck.plist',
                 ]
end
