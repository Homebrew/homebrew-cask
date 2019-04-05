cask 'syncovery' do
  version '8.23'
  sha256 'dff1131bfc6ebb22aee1c0c5e96ae35e5ef9231d77e7884a74a88464599e06b2'

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
