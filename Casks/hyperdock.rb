cask :v1 => 'hyperdock' do
  version '1.6.0.1'
  sha256 '30d90640052015a042ea40a4eb17889c2717cec72fd6af05dc447fd7679ce517'

  url "https://bahoom.com/hyperdock/#{version}/HyperDock-#{version}.dmg"
  appcast 'https://bahoom.com/hyperdock/appcast.xml',
          :sha256 => '22d00db14142a74fce6466bde7dd590ee7f3c3ec277e59b31a637885f97c9542'
  name 'HyperDock'
  homepage 'http://hyperdock.bahoom.com/'
  license :commercial

  prefpane 'HyperDock.prefpane'
end
