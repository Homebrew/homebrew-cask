cask 'musictube' do
  version '1.7'
  sha256 'dc2b3fe32262e09e7080f522e03b796e6f589e4281f100c9f80023a58ac56f59'

  url 'http://flavio.tordini.org/files/musictube/musictube.dmg'
  appcast 'http://flavio.tordini.org/musictube-ws/appcast.xml',
          checkpoint: '67f33a5811f49c447808f92ece2884842657aa4e947c08e5df6f575bb41b5f0b'
  name 'Musictube'
  homepage 'http://flavio.tordini.org/musictube'

  app 'Musictube.app'
end
