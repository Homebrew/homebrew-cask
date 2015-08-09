cask :v1 => 'istat-menus' do
  version '5.10'
  sha256 'cde4c1b69201dbaa7a7f2adcf9ee5294d7b4201d141a3fde647a6bf90edc902b'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/bjango/files/istatmenus5/istatmenus#{version}.zip"
  name 'iStats Menus'
  homepage 'http://bjango.com/mac/istatmenus/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iStat Menus.app'
end
