cask 'istat-menus' do
  version '5.20'
  sha256 'f1a30b49d4012fab3e431a1727fd335d0fe3f522028c8f597cdfac4999f199be'

  # amazonaws.com/bjango was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/bjango/files/istatmenus5/istatmenus#{version}.zip"
  name 'iStats Menus'
  homepage 'https://bjango.com/mac/istatmenus/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iStat Menus.app'
end
