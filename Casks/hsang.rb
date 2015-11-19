cask :v1 => 'hsang' do
  version '1.6.0'
  sha256 '38034028316b9a9f5c0a51459a5af4e853acb7237bfa4ba38cc818c2578d1517'

  # netease.com is the official download host per the vendor homepage
  url "http://nie.gdl.netease.com/lushi/HSAng_#{version}.dmg"
  name 'HSAng'
  appcast 'http://lushi.163.com/mac.xml',
          :sha256 => '61a0d703f0f0f0b76472870df97016a346e53f23e223ebb9ba02c5a0c2fc2980'
  homepage 'http://lushi.163.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'HSAng.app'
end
