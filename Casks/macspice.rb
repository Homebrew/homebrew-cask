cask :v1 => 'macspice' do
  version '3.1.7'
  sha256 '80e1824e710467115700f377311f5ac287be7154caf228d87ab2ffab3a52b69c'

  url "http://www.macspice.com/mirror/binaries/v#{version}/MacSpice3f5.dmg"
  appcast 'http://www.macspice.com/AppCast-v2.xml',
          :sha256 => '06453465656d258c11326d1f2cba6158a11ff9a939f557fb5da1b3b2d4402db0'
  name 'MacSpice'
  homepage 'http://www.macspice.com/'
  license :closed

  app 'MacSpice.app'
end
