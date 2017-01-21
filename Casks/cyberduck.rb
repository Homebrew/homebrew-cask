cask 'cyberduck' do
  version '5.3.3.23221'
  sha256 'b647bbbe27f1796b99bf0eaf83ed07332f2ab141afe3bb885b25a1ae0017a110'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: 'de1e882f7b9751eedbbdc3f00e9974bee45d421fafd60b615aa09ff3c2ac370d'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
                '~/Library/Caches/ch.sudo.cyberduck',
              ]
end
