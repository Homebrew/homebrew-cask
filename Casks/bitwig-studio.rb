cask :v1 => 'bitwig-studio' do
  version '1.0.14'
  sha256 'f968118c93c3449310d48c32f545e83d0f918c8e312e5a4b54cd30467e860b1e'

  url "http://packs.bitwig.com/downloads/Bitwig%20Studio%20#{version}.dmg"
  homepage 'https://www.bitwig.com'
  license :commercial

  app 'Bitwig Studio.app'
end
