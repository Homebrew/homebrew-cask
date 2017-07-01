cask 'exodus' do
  version '1.28.2'
  sha256 '47135f2498584489c0490098683bf5f8982ca7f3cbfaa85f8f6d107794efc645'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/Exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '060aefcd3749c818aa6c9f8340175555674c6a1d704ac34f0162f34ed765c7f3'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
