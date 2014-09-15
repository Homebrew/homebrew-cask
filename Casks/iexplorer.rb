class Iexplorer < Cask
  version '3.4.0.4'
  sha256 '54dfe7d3347681382343b96548b479146a4e1623ce59ba3b98102d0b5fb89f63'

  homepage 'http://www.macroplant.com/'
  appcast 'http://www.macroplant.com/iexplorer/ie3-appcast.xml'
  url "http://cdn.macroplant.com/release/iExplorer-#{version}.dmg"

  app 'iExplorer.app'
end
