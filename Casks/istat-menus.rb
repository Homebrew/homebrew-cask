cask :v1 => 'istat-menus' do
  version :latest
  sha256 :no_check

  url 'http://download.bjango.com/istatmenus/'
  homepage 'http://bjango.com/mac/istatmenus/'
  license :unknown    # todo: improve this machine-generated value

  app 'iStat Menus.app'
end
