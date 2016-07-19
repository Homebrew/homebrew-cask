cask 'cyberduck' do
  version '5.0.9.20675'
  sha256 '003c26cff08f9a7709bebb33bfa41371d83987334c04681d89aa1f259f1b9c17'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: 'a6e08dce08837bf5ab933d24a158fbe634f58009b0c2556a45f339ed8c054675'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'
  license :gpl

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
              ]
end
