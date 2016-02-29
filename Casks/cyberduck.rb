cask 'cyberduck' do
  version '4.8.2.19063'
  sha256 'e67bddfd9c226ebc4f38fa2f42930f81ab971a6bc90ba1dcd4db478dcec80bab'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: '7ccca866ba519554a01816da1ba87cdd2d3acdfce6d6758c382f0aee0f5b301f'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'
  license :gpl

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
              ]
end
