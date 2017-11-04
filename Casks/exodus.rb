cask 'exodus' do
  version '1.37.1'
  sha256 '5d18bc5df12729ff6f76fc478fdda96bab6fb3ca66a83672babdf261ea221a7f'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '426cc8fedce9cfe30827ed465093b737434d000a2618b2b3d8715ec080ce843d'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
