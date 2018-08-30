cask 'syncovery' do
  version '8.01b'
  sha256 '049167d72a4662aef0114057a1716d6525e73e490be462eb2d1a5277dae56b16'

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
