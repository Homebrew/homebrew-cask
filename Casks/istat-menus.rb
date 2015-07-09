cask :v1 => 'istat-menus' do
  version :latest
  sha256 :no_check

  url 'http://download.bjango.com/istatmenus/'
  appcast 'http://bjango.com/istatmenus/appcast/appcast2.xml',
          :sha256 => '4780e5d8414c45e00e3ac792d67bd8ba0b1d59f1e9394ee1db0478352b040db2'
  name 'iStats Menus'
  homepage 'http://bjango.com/mac/istatmenus/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iStat Menus.app'
end
