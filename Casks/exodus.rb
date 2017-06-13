cask 'exodus' do
  version '1.27.3'
  sha256 '86344240ac03bf12312f899f0b8b3a3ec8d4102b601633a097b0e1463daa2600'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/Exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '462fc7985f699a115a18d4d52500f641ff186e4c61a28eb0a13a402976f6fa52'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
