cask 'syncovery' do
  version '8.22'
  sha256 '27232689204a8942673a4c86079bea46b53a5e99b0b5fbe40c823ac10dfbc16f'

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
