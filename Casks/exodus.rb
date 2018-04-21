cask 'exodus' do
  version '1.49.0'
  sha256 '603f4c6254a1f0c96bef5c179d498b9019105195d0779088edcf98c95ec26255'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: 'e5a1bacd599d4b9c6a5e8048b2d82765ed57efba0d734f0fc15ac9609052c650'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'

  zap trash: [
               '~/Library/Application Support/Exodus',
               '~/Library/Preferences/com.electron.exodus.helper.plist',
               '~/Library/Preferences/com.electron.exodus.plist',
               '~/Library/Saved Application State/com.electron.exodus.savedState',
             ]
end
