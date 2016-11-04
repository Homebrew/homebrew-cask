cask 'cyberduck' do
  version '5.2.2.21483'
  sha256 '65f64360a01dd0ac6ae5bf97a41994fb8a7587b83c3a6a2655a2a12e1342c44a'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: '25ac802b9e7e6ba98a96f9176e48e03e0d8eaaaa33f4174c78af117c2b087a59'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
                '~/Library/Caches/ch.sudo.cyberduck',
              ]
end
