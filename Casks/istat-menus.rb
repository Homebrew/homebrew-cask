cask :v1 => 'istat-menus' do
  version '5.11'
  sha256 'cb02606a90e1cf4a9b771b6e0418c1e37233e4d736be285d03e7f5f2f9d6d5c4'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/bjango/files/istatmenus5/istatmenus#{version}.zip"
  name 'iStats Menus'
  homepage 'http://bjango.com/mac/istatmenus/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iStat Menus.app'
end
