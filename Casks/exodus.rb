cask 'exodus' do
  version '1.31.0'
  sha256 '44ae651871426dd66daebaa3bdee0f010c419e779982ba6f761025835b703711'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/Exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '27381c2d2a322cbd0226b4d170da45fa83b97805046b82dfad1448ce63f23b0d'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
