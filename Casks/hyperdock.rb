cask :v1 => 'hyperdock' do
  version :latest
  sha256 :no_check

  url 'http://hyperdock.bahoom.com/HyperDock.dmg'
  homepage 'http://hyperdock.bahoom.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  prefpane 'HyperDock.prefpane'
end
