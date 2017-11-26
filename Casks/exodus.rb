cask 'exodus' do
  version '1.39.1'
  sha256 'ee0a7bf335f554b2de175add87c63cc0d0b953886c5c48444e45c2db9cf06df9'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '80558fc9f90f87a966b85d4ee24db6f02b11f546de407fcf52bcbc209a12d8a6'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
