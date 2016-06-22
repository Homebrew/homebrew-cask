cask 'cyberduck' do
  version '5.0.3.20504'
  sha256 'ce1f20d96d6112f2ba1c5c5144ee07109a6ffd7da6124a66b88a1e06e63bfc32'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: '16537c2a31ea9937848da56b27c89433bbaeb5722c5a744cc351fcd97eae3373'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'
  license :gpl

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
              ]
end
