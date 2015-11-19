cask :v1 => 'bitwig-studio' do
  version '1.1.8'
  sha256 '9500a6479055402febb12817c26af187706d2937a1c781c1a0147493ffdd7775'

  url "https://downloads.bitwig.com/Bitwig%20Studio%20#{version}.dmg"
  name 'Bitwig Studio'
  homepage 'https://www.bitwig.com'
  license :commercial

  app 'Bitwig Studio.app'
end
