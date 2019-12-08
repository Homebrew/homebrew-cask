cask 'musictube' do
  version '1.10'
  sha256 '519e22b910cb87eac1b1e7a60f71fe7b916c5ff99568b1bb39097acfa15bfb36'

  url 'https://flavio.tordini.org/files/musictube/musictube.dmg'
  appcast 'https://flavio.tordini.org/musictube-ws/appcast.xml'
  name 'Musictube'
  homepage 'https://flavio.tordini.org/musictube'

  app 'Musictube.app'
end
