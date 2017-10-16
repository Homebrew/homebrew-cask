cask 'cyberduck' do
  version '6.2.9.26659'
  sha256 '443274752fa53c25be27089bc79951998b26c753d06ff3702e375e8ea134622f'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: '8c20af760170af38c88e428577ebb4d1d490983704dcfdcd6dc814493e3214da'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  app 'Cyberduck.app'

  zap delete: '~/Library/Caches/ch.sudo.cyberduck',
      trash:  [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
              ]
end
