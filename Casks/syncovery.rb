cask 'syncovery' do
  version '8.68b'
  sha256 '4baefc054e8f07100acfd77b1e8591ff1065d98cdb193059fb57fed482701424'

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
