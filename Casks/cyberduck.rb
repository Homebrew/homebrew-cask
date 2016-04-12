cask 'cyberduck' do
  version '4.9.19632'
  sha256 'ab3def26fdb3d2e2687c212284320c9b6b3f9018f9b8365b3b4fba7bf831d3fa'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: '1abf3536de75afbb532332123c44037e5548b083a922f61b4b84ba6a353de577'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'
  license :gpl

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
              ]
end
