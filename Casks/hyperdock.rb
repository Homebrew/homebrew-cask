class Hyperdock < Cask
  version :latest
  sha256 :no_check

  url 'http://hyperdock.bahoom.com/HyperDock.dmg'
  homepage 'http://hyperdock.bahoom.com/'
  license :unknown

  prefpane 'HyperDock.prefpane'
end
