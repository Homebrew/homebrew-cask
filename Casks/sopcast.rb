cask 'sopcast' do
  version '1.6.4'
  sha256 '0ada7d855c8b8803d21260f56073cafea0718aead267736e396606006f9282dd'

  url "http://download.sopcast.com/download/SopCastOSX-#{version}.zip"
  appcast 'http://www.sopcast.com/download/mac.html'
  name 'SopCast'
  homepage 'http://www.sopcast.com/'

  app 'SopCast.app'
  binary "#{appdir}/SopCast.app/Contents/Resources/binaries/m32/sp-sc-auth"
end
