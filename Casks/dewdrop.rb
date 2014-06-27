class Dewdrop < Cask
  version '0.4'
  sha256 '88cf0ff182f5b4c49e761186b735e69b4a2d724e4e8781d4f87121faac850c57'
  
  url 'http://dewdrop.dangelov.com/binaries/DewdropClient-0.4-Mac.tar.gz'
  appcast 'http://dewdrop.dangelov.com/mac-appcast/updates.xml'
  homepage 'http://dewdrop.dangelov.com/'

  link 'Dewdrop.app'
end
