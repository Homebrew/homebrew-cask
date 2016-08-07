cask 'cyberduck' do
  version '5.0.11.20753'
  sha256 '8f62a775f9f92e7ed8c2ecd5ec5575dcd707608304cd291aba5c66c677b4498c'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: '4a006b718208a09bf58021fd06659c3d87e3d306bd68f8bdf702b7b5fa5940ff'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'
  license :gpl

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
              ]
end
