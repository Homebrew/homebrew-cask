cask 'syncovery' do
  version '8.61a'
  sha256 '1a3d3a8390424a892a2e36e82abcd89bdcd73af5005fa46587122e51c066c5e2'

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
