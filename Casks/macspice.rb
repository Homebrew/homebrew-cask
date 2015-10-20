cask :v1 => 'macspice' do
  version '3.1.6'
  sha256 '9ea9206e18ecdbe71d2fa961badbbd1cb100bad16e30e0213446cf0cd13ab7ff'

  url "http://www.macspice.com/mirror/binaries/v#{version}/MacSpice3f5.dmg"
  appcast 'http://www.macspice.com/AppCast-v2.xml',
          :sha256 => '06453465656d258c11326d1f2cba6158a11ff9a939f557fb5da1b3b2d4402db0'
  name 'MacSpice'
  homepage 'http://www.macspice.com/'
  license :closed

  app 'MacSpice.app'
end
