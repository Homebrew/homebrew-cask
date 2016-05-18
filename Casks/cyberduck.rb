cask 'cyberduck' do
  version '4.9.1.19769'
  sha256 '7d71ac4684cb5c7aa11d508b1b6cbd053c2ec435da5a59857a0b489b672bcea5'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: 'd6aae0e0e3be29c39e8bff151cc4c25871baad703617a86d39ed1bd5cc65db70'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'
  license :gpl

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
              ]
end
