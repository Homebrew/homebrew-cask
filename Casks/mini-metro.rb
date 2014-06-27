class MiniMetro < Cask
  version 'Alpha 13b'
  sha256 '77416668bc5c2a982642cb692b35b7f0b5854cb950750477aa6d362d2b68246b'

  url 'http://static.dinopoloclub.com/minimetro/builds/alpha13/MiniMetro-alpha13b-osx.zip'
  homepage 'http://dinopoloclub.com/minimetro/'

  link 'MiniMetro-alpha13b-osx.app', :target => 'Mini Metro.app'
end
