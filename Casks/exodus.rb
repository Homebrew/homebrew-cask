cask 'exodus' do
  version '1.25.3'
  sha256 'e67802ed151844f1ff61a75dcf618a180cb97e58a07c4693ad5a216a02f4a646'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url 'https://exodusbin.azureedge.net/releases/Exodus-macos-1.25.3.dmg'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
