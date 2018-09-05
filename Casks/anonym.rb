cask 'anonym' do
  version '2.3'
  sha256 '696ac1cf173976b26e2fdd8f8f087df16437e237cf271fae6dcbcc403148a0d4'

  url "http://www.hanynet.com/anonym-#{version}.zip"
  appcast 'http://www.hanynet.com/anonym/'
  name 'Anonym'
  homepage 'http://www.hanynet.com/anonym/'

  app 'Anonym.app'
end
