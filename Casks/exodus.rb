cask 'exodus' do
  version '1.40.0'
  sha256 'ae6a56173efbda99622e0836d0838b7dc26a06d3d8423a164f2ea43105a3fd07'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '3fabf10e9e6f2cdb6bd6d0071659cbaa88df97cf3b9bb4d5c5a05dbdcbecce1c'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
