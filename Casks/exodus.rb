cask 'exodus' do
  version '1.44.1'
  sha256 'fa1c2ff2df970a90776962695be19c2ccd42b9ff59cc4b7749873a231b0fda5c'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '17ab627cb9e09f9f6a70da8fac5a51be69092a0d9f097ae2154d51373aec9764'
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
