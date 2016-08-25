cask 'cyberduck' do
  version '5.1.0.20872'
  sha256 '33598b7e559c3199d83b3e7ede1fd5de5c0d55666de9a610fbb9871306508c43'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: '264eab1205cec494f8bd73421f7333d1f11a05ac6859296fb065c33400f74b28'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'
  license :gpl

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
                '~/Library/Caches/ch.sudo.cyberduck',
              ]
end
