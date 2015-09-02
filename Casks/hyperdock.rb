cask :v1 => 'hyperdock' do
  version '1.5.2'
  sha256 '83dcbc73ff3685487a80f665f30a44ef1d6f713afb3cf80aa3ba3656ac650a05'

  url "https://bahoom.com/hyperdock/#{version}/HyperDock-#{version}.dmg"
  appcast 'https://bahoom.com/hyperdock/appcast.xml',
          :sha256 => '22d00db14142a74fce6466bde7dd590ee7f3c3ec277e59b31a637885f97c9542'
  name 'HyperDock'
  homepage 'http://hyperdock.bahoom.com/'
  license :commercial

  prefpane 'HyperDock.prefpane'
end
