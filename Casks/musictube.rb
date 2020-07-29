cask 'musictube' do
  version '1.12.1'
  sha256 'af748a4afdb577b3eb2bed4166c8d80cb7e82d9a9051878afee7abf5e5a3b084'

  url 'https://flavio.tordini.org/files/musictube/musictube.dmg'
  appcast 'https://flavio.tordini.org/musictube-ws/appcast.xml'
  name 'Musictube'
  homepage 'https://flavio.tordini.org/musictube'

  app 'Musictube.app'
end
