cask :v1 => 'amethyst' do
  version '0.9.5'
  sha256 'ceb73e48ea7774aa1e0cfbdace2599687b30ae6484ddd327713af2659c365738'

  url "http://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"
  name 'Amethyst'
  appcast 'http://ianyh.com/amethyst/appcast.xml',
          :sha256 => '89f4aa8866df077e3da88eb1636334093190bc1286cfee52960a29ebf3f05bc8'
  homepage 'http://ianyh.com/amethyst'
  license :mit

  app 'Amethyst.app'
end
