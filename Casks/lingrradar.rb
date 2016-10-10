cask 'lingrradar' do
  version '2.26'
  sha256 'c1883e5bb0d31055a34651c1315dd5fdbdc5126dc493a84ea40cf518e4ff23b6'

  url "http://radar.lingr.com/mac/LingrRadar_#{version}.tbz"
  appcast 'http://radar.lingr.com/mac_appcast.xml',
          checkpoint: 'f076e43ea82c411d7a598bc28ee893451b7baaed35dd9450774e6a1f31139019'
  name 'Lingr Radar'
  homepage 'http://radar.lingr.com/'

  app 'LingrRadar.app'
end
