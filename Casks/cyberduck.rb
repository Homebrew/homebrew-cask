cask 'cyberduck' do
  version '6.5.0.27854'
  sha256 '267d96b335706516e8e4018694389eaecb3179d49abe1ff7ada4503ae86ac301'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: '3ba5f957bfbd9a218f14f5765467c37b416720340b29b5e14e318f06415055f4'
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
