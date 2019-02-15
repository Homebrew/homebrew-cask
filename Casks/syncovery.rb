cask 'syncovery' do
  version '8.19'
  sha256 'e39baf8480716814a5b4651d81706803623bd1206148c8bc7b7bfa30210e5841'

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
