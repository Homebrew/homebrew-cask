cask :v1 => 'hyperdock' do
  version :latest
  sha256 :no_check

  url 'http://hyperdock.bahoom.com/HyperDock.dmg'
  homepage 'http://hyperdock.bahoom.com/'
  license :unknown    # todo: improve this machine-generated value

  prefpane 'HyperDock.prefpane'
end
