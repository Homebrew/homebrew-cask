cask 'exodus' do
  version '1.64.0'
  sha256 'a7583f964c808efe919607f9b6c56b5e57162de780829bfb15a95c0e537b917a'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  auto_updates true

  app 'Exodus.app'

  zap trash: [
               '~/Library/Application Support/Exodus',
               '~/Library/Preferences/com.electron.exodus.helper.plist',
               '~/Library/Preferences/com.electron.exodus.plist',
               '~/Library/Saved Application State/com.electron.exodus.savedState',
             ]
end
