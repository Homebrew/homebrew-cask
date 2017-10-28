cask 'cyberduck' do
  version '6.2.10.26754'
  sha256 '40b4eb869dc5913bcf34110bbb8a555edde3c1c6f7d1e40a9c557cac45311e7b'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: '0912576949d6bd413bd6b682cddf87c0e1ceaed8ea891e0eca2ebd9bf0827673'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  app 'Cyberduck.app'

  zap delete: '~/Library/Caches/ch.sudo.cyberduck',
      trash:  [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
              ]
end
