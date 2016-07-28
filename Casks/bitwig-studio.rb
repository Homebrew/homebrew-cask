cask 'bitwig-studio' do
  version '1.3.12'
  sha256 'f862965cc568e9ad710ebf9572ec7389b1c95b33884320b532c9d3deabb5ae4b'

  url "https://downloads.bitwig.com/stable/#{version}/Bitwig%20Studio%20#{version}.dmg"
  name 'Bitwig Studio'
  homepage 'https://www.bitwig.com'
  license :commercial

  app 'Bitwig Studio.app'
end
