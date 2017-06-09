cask 'exodus' do
  version '1.27.1'
  sha256 '28eeac975f978ab1c38e5395046d5f1b019baf09da1fbdbcaa352b48e992a2f9'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/Exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '5cac7bfce196de841826eec8c3c987df557efdbf5730d31298e4234dbbcfb50f'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
