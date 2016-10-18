cask 'hyperdock' do
  version :latest
  sha256 :no_check

  url 'https://bahoom.com/hyperdock/HyperDock.dmg'
  name 'HyperDock'
  homepage 'http://hyperdock.bahoom.com/'

  prefpane 'HyperDock.prefpane'
end
