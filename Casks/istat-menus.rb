cask :v1 => 'istat-menus' do
  version '5.11'
  sha256 '720782256c427808669cef16bdb01cd7953c22d6f8a78d10a796f7e0fbcacf3e'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/bjango/files/istatmenus5/istatmenus#{version}.zip"
  name 'iStats Menus'
  homepage 'http://bjango.com/mac/istatmenus/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iStat Menus.app'
end
