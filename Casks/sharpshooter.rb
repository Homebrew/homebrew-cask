cask 'sharpshooter' do
  version '2.4.3'
  sha256 '7593bf59c9e81ba5b1aa6f16c292237e2b5b8353a1d271ca47c25c28f99c4570'

  url "http://www.kerlmax.com/products/sharpshooter/Sharpshooter_#{version}.zip"
  appcast "http://www.kerlmax.com/products/sharpshooter/sharpshooter_v#{version.major}_appcast.php"
  name 'Sharpshooter'
  homepage 'http://www.kerlmax.com/products/sharpshooter/'

  auto_updates true

  app 'Sharpshooter.app'
end
