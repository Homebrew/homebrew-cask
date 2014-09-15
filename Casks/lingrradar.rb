class Lingrradar < Cask
  version '2.26'
  sha256 'c1883e5bb0d31055a34651c1315dd5fdbdc5126dc493a84ea40cf518e4ff23b6'

  url 'http://radar.lingr.com/mac/LingrRadar_2.26.tbz'
  appcast 'http://radar.lingr.com/mac_appcast.xml'
  homepage 'http://radar.lingr.com/'

  app 'LingrRadar.app'
end
