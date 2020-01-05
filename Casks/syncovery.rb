cask 'syncovery' do
  version '8.59a'
  sha256 '15271fd1a185f9f9d66af1bfc24392b90c0439546a9460d878a6bb3dc3781903'

  url "https://www.syncovery.com/release/SyncoveryMac#{version}.dmg"
  appcast 'https://www.syncovery.com/download/mac/'
  name 'Syncovery'
  homepage 'https://www.syncovery.com/'

  pkg 'SyncoveryMac (double-click to install).pkg'

  uninstall pkgutil: 'com.company.Syncovery*'

  zap trash: '~/Library/Preferences/Syncovery.ini',
      rmdir: [
               '~/Library/Application Support/Syncovery',
               '~/Saved Application State/com.company.Syncovery.savedState',
               '~/Library/Preferences/Syncovery',
               '~/Library/Logs/Syncovery',
             ]
end
