cask 'exodus' do
  version '1.30.2'
  sha256 '2c77fa32563c26d72bfed82f7de8b83c058bd4e5f13378e41b3c0e6748b98240'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/Exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '3b9befa6053e6a93490a7236d9b22075bd827422b35088eae4a74e739a9c1d1e'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
