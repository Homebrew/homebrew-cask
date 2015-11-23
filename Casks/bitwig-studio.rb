cask :v1 => 'bitwig-studio' do
  version '1.3.3'
  sha256 '6d614095b1b39e387ed4c96a70342c5d982a6d4a5c71e6a4498f25b7898b909b'

  url "https://downloads.bitwig.com/Bitwig%20Studio%20#{version}.dmg"
  name 'Bitwig Studio'
  homepage 'https://www.bitwig.com'
  license :commercial

  app 'Bitwig Studio.app'
end
