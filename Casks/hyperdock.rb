cask 'hyperdock' do
  version '1.6.0.1'
  sha256 '30d90640052015a042ea40a4eb17889c2717cec72fd6af05dc447fd7679ce517'

  url "https://bahoom.com/hyperdock/#{version}/HyperDock-#{version}.dmg"
  appcast 'https://bahoom.com/hyperdock/appcast.xml',
          :checkpoint => 'd36508378926c4b4dffc089281581484e57e72f4a0426decc83778f661b17ea2'
  name 'HyperDock'
  homepage 'http://hyperdock.bahoom.com/'
  license :commercial

  prefpane 'HyperDock.prefpane'
end
