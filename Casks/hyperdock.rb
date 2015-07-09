cask :v1 => 'hyperdock' do
  version :latest
  sha256 :no_check

  url 'http://hyperdock.bahoom.com/HyperDock.dmg'
  appcast 'https://bahoom.com/hyperdock/appcast.xml',
          :sha256 => '22d00db14142a74fce6466bde7dd590ee7f3c3ec277e59b31a637885f97c9542'
  name 'HyperDock'
  homepage 'http://hyperdock.bahoom.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  prefpane 'HyperDock.prefpane'
end
