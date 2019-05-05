cask 'syncovery' do
  version '8.30b'
  sha256 'e36cdc138bb24057e7d58f1ad1223759d437566d1ebea84a7956d07a30d80204'

  url "https://www.syncovery.com/release/SyncoveryMac#{version}.dmg"
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
