cask :v1 => 'istat-menus' do
  version '5.11'
  sha256 '5931ff8a024ea54f9268e66c650ae4a33b399ae25ca36586b7814d960ed77d19'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/bjango/files/istatmenus5/istatmenus#{version}.zip"
  name 'iStats Menus'
  homepage 'http://bjango.com/mac/istatmenus/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iStat Menus.app'
end
