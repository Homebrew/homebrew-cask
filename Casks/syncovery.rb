cask 'syncovery' do
  version '8.01'
  sha256 '3d040cf065375687b45bac2c1f382698c99ea88826adeaf1f5b8f40a5e85c473'

  url 'https://www.syncovery.com/release/SyncoveryMac.dmg'
  name 'Syncovery'
  homepage 'https://www.syncovery.com/'

  pkg 'SyncoveryMac (double-click to install).pkg'

  uninstall pkgutil: 'com.company.Syncovery*'

  zap trash: '~/Library/Preferences/Syncovery.ini,
      rmdir: [
               '~/Library/Application Support/Syncovery',
               '~/Saved Application State/com.company.Syncovery.savedState',
               '~/Library/Preferences/Syncovery',
               '~/Library/Logs/Syncovery',
             ]
end
