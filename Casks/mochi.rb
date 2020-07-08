cask 'mochi' do
  version '1.5.6'
  sha256 'd13747afcab13620753ff0b75588ca3405c41d507dc7d3d90f9ec736f8e5688b'

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast 'https://mochi.cards/'
  name 'Mochi'
  homepage 'https://mochi.cards/'

  app 'Mochi.app'
end
