cask :v1 => 'hyperdock' do
  version :latest
  sha256 :no_check

  url "https://bahoom.com/hyperdock/HyperDock.dmg"
  appcast 'https://bahoom.com/hyperdock/appcast.xml',
          :sha256 => '22d00db14142a74fce6466bde7dd590ee7f3c3ec277e59b31a637885f97c9542'
  name 'HyperDock'
  homepage 'http://hyperdock.bahoom.com/'
  license :commercial

  prefpane 'HyperDock.prefpane'
end
