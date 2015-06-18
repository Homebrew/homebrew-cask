cask :v1 => 'hsang' do
  version '1.3.0'
  sha256 '2471b4593b61afbc06d09011d556e230f90a62fb55bcffda0e30d2dbae329273'

  # netease.com is the official download host per the vendor homepage
  url "http://nie.gdl.netease.com/lushi/HSAng_#{version}.dmg"
  name 'HSAng'
  appcast 'http://lushi.163.com/mac.xml',
          :sha256 => '0d4e71b5376ec785f85e9abe19fc60172280dd9030ea576db969af5014b6f7ce'
  homepage 'http://lushi.163.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'HSAng.app'
end
