cask 'bitwig-studio' do
  version '1.3.16'
  sha256 '2429416edb2ea704eb1165c5c3bf5c876c8000a551a53c952f00f0da762c8aa0'

  url "https://downloads.bitwig.com/stable/#{version}/Bitwig%20Studio%20#{version}.dmg"
  name 'Bitwig Studio'
  homepage 'https://www.bitwig.com/'

  app 'Bitwig Studio.app'
end
