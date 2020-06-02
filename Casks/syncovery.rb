cask 'syncovery' do
  version '8.68'
  sha256 '80e5efbd56259a4d446cfe9d857aa5e8451bd4852ab7492714a4a87ee3f8ed96'

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
