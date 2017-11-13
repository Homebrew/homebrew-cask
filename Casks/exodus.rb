cask 'exodus' do
  version '1.38.0'
  sha256 'fb6acee30c487d8d524e8a2b5ebb54c73916a0b06adfb2d9e774a7ab25a34553'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '117387d0c9609c5c6f18fe3135fa6524bbee2f51bbe08045b71cf3d4c7dba2ce'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
