cask 'cevelop' do
  version '1.10.1-201809130538'
  sha256 'fde8a9309582738873b8b10988bbf47fb6fb97dfaefc584a1fc75ef8e4633eb5'

  url "https://www.cevelop.com/cevelop/downloads/cevelop-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://www.cevelop.com/download/'
  name 'Cevelop'
  homepage 'https://www.cevelop.com/'

  app 'Cevelop.app'
end
