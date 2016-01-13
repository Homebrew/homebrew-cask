cask 'lingrradar' do
  version '2.26'
  sha256 'c1883e5bb0d31055a34651c1315dd5fdbdc5126dc493a84ea40cf518e4ff23b6'

  url "http://radar.lingr.com/mac/LingrRadar_#{version}.tbz"
  appcast 'http://radar.lingr.com/mac_appcast.xml',
          :sha256 => 'd773222a8ae5bf06468f1332cbfea31bf62825f3ba0984f79329116c7d9e02f5'
  name 'Lingr Radar'
  homepage 'http://radar.lingr.com/'
  license :gratis

  app 'LingrRadar.app'
end
