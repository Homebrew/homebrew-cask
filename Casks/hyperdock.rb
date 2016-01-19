cask 'hyperdock' do
  version '1.6.0.1'
  sha256 '30d90640052015a042ea40a4eb17889c2717cec72fd6af05dc447fd7679ce517'

  url "https://bahoom.com/hyperdock/#{version}/HyperDock-#{version}.dmg"
  appcast 'https://bahoom.com/hyperdock/appcast.xml',
          checkpoint: 'decb0617147a1284fec1cd626e8353dedf9daf49d61478ca87040216182a1ac3'
  name 'HyperDock'
  homepage 'http://hyperdock.bahoom.com/'
  license :commercial

  prefpane 'HyperDock.prefpane'
end
