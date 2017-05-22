cask 'exodus' do
  version '1.25.3'
  sha256 'e67802ed151844f1ff61a75dcf618a180cb97e58a07c4693ad5a216a02f4a646'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/Exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '42caee46c5b5effee559543dcab13fe553e3f308427ad44d729820e928fd1046'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
