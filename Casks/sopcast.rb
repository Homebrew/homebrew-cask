cask 'sopcast' do
  version '1.6.4'
  sha256 '0ada7d855c8b8803d21260f56073cafea0718aead267736e396606006f9282dd'

  # download.sopcast.com/download was verified as official when first introduced to the cask
  url "http://download.sopcast.com/download/SopCastOSX-#{version}.zip"
  name 'SopCast'
  homepage 'http://www.sopcast.org/'

  app 'SopCast.app'
  binary "#{appdir}/SopCast.app/Contents/Resources/binaries/m32/sp-sc-auth"

  caveats do
    files_in_usr_local
  end
end
