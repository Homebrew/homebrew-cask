cask 'syncovery' do
  version '8.57a'
  sha256 '89394d64da46594f953f25fab807b1ee6917fa7f17a1dd51f5edcc5a3627930f'

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
