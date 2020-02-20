cask 'cevelop' do
  version '1.13.0-201910070714'
  sha256 '00d71ac7a20a4e61598355080ec5faf4b957895eb60dbd62a4dfa59cbc061f64'

  url "https://www.cevelop.com/cevelop/downloads/cevelop-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://www.cevelop.com/download/'
  name 'Cevelop'
  homepage 'https://www.cevelop.com/'

  app 'Cevelop.app'
end
