cask 'cyberduck' do
  version '5.1.3.20962'
  sha256 'e851ddd9f7bd0e072822b25af9acafbf287fcd220bf0f6ff291cbb3e1fa4f450'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: 'ddb250bc2d050de42fdb80d8e80f15c1e8dca382e658c4db6202cf9b17614538'
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
