cask 'cevelop' do
  version '1.12.0-201906270918'
  sha256 'aed62c88fc3a090268d0dea5ab6a312ba9c0e8c53c7c900e34b985abb2681b80'

  url "https://www.cevelop.com/cevelop/downloads/cevelop-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://www.cevelop.com/download/'
  name 'Cevelop'
  homepage 'https://www.cevelop.com/'

  app 'Cevelop.app'
end
