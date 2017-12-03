cask 'cyberduck' do
  version '6.3.1.27228'
  sha256 'afcc3fa63da2228a743681c9a439091867c9143fa2cac66db8d1838db4b28985'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: '30eae1d80f71d716d7abd54696a077b7c799ed18318bfb2d7e1c9c7c0a4ff48d'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  app 'Cyberduck.app'

  zap trash: [
               '~/Library/Application Support/Cyberduck',
               '~/Library/Caches/ch.sudo.cyberduck',
               '~/Library/Preferences/ch.sudo.cyberduck.plist',
             ]
end
