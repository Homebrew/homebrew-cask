cask :v1 => 'istat-menus' do
  version :latest
  sha256 :no_check

  url 'http://download.bjango.com/istatmenus/'
  name 'iStats Menus'
  homepage 'http://bjango.com/mac/istatmenus/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iStat Menus.app'
end
