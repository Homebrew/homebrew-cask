cask 'mochi' do
  version '1.4.10'
  sha256 'b4d50383d3cd0089f7b565a65cb6b649b2df3db4cc2683bf790602714efd608b'

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast 'https://mochi.cards/'
  name 'Mochi'
  homepage 'https://mochi.cards/'

  app 'Mochi.app'
end
