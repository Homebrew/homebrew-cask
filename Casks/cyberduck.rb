cask 'cyberduck' do
  version '6.4.1.27633'
  sha256 '82a8129d347d1edcb26a4e99eacacfcacc830444d01d67d37771671895180ddb'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: 'afe4b39d484802ea9434599d6b2eb0e458b52f0010d620c27d7320bbd2d61755'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  auto_updates true

  app 'Cyberduck.app'

  zap trash: [
               '~/Library/Application Support/Cyberduck',
               '~/Library/Caches/ch.sudo.cyberduck',
               '~/Library/Preferences/ch.sudo.cyberduck.plist',
             ]
end
