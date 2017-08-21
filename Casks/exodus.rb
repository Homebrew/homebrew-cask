cask 'exodus' do
  version '1.32.0'
  sha256 '70c907046fceadcca17038427cbb5cf5262e8014f8cf9d07612648a062d931bb'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/Exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '74c0d3d79c6f10996dd610c96aa32fb01829b48dd8518076363e3be63b0ab588'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
