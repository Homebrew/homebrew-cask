cask 'mochi' do
  version '1.5.1'
  sha256 'a61e57f265a8f5222774570342e5ac265b2c1293370983bc2df25382640d5e0b'

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast 'https://mochi.cards/'
  name 'Mochi'
  homepage 'https://mochi.cards/'

  app 'Mochi.app'
end
