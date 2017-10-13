cask 'exodus' do
  version '1.36.1'
  sha256 '001108f4339fe34590bd76d451303e6efb2fd66b00a558d8562b88157c408151'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: 'a8c7bdd46c65a48f7a9f157705a8fe328a43188ece35c10ff5189accbf4036f3'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
