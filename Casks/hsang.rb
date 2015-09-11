cask :v1 => 'hsang' do
  version '1.5.1'
  sha256 'd04ad25278fb1305df0261e7b826d26ab2ef844c9326c28db7f49317acfe60e8'

  # netease.com is the official download host per the vendor homepage
  url "http://nie.gdl.netease.com/lushi/HSAng_#{version}.dmg"
  name 'HSAng'
  appcast 'http://lushi.163.com/mac.xml',
          :sha256 => '8cbbe867641dffe7b41babc9f39a0bc06fac2e608176c896a09c7e1fcb2bbd95'
  homepage 'http://lushi.163.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'HSAng.app'
end
