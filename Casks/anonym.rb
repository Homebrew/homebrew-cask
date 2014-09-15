class Anonym < Cask
  version '2.3'
  sha256 '696ac1cf173976b26e2fdd8f8f087df16437e237cf271fae6dcbcc403148a0d4'

  url 'http://www.hanynet.com/anonym-2.3.zip'
  homepage 'http://www.hanynet.com/anonym/index.html'

  nested_container 'Anonym 2.3.dmg'
  app 'Anonym.app'
end
