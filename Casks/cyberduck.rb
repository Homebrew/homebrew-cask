cask 'cyberduck' do
  version '6.3.2.27291'
  sha256 'c7e4b39e044f3a9ad555b5e19e0d16529c12af16c2db3d7739f276e89b628d61'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: 'be68a9b362c2fe3776a1d0c2680a9966b7075605d04cb13d5f42e3ce9c932f53'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  app 'Cyberduck.app'

  zap trash: [
               '~/Library/Application Support/Cyberduck',
               '~/Library/Caches/ch.sudo.cyberduck',
               '~/Library/Preferences/ch.sudo.cyberduck.plist',
             ]
end
