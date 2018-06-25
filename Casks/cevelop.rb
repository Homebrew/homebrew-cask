cask 'cevelop' do
  version '1.9.1-201802220948'
  sha256 '5273f0d409c6393f2fc1402541676972ec7e42531b927ddf0a5034180fd141c0'

  url "https://www.cevelop.com/cevelop/downloads/cevelop-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://www.cevelop.com/download/'
  name 'Cevelop'
  homepage 'https://www.cevelop.com/'

  app 'Cevelop.app'
end
