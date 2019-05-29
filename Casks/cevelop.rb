cask 'cevelop' do
  version '1.11.1-201902151304'
  sha256 '4b47849edc1a4bc5eedb5bff252cba261deca9ff524493085f9acbba422c6ece'

  url "https://www.cevelop.com/cevelop/downloads/cevelop-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://www.cevelop.com/download/'
  name 'Cevelop'
  homepage 'https://www.cevelop.com/'

  app 'Cevelop.app'
end
