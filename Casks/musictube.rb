cask 'musictube' do
  version '1.8.1'
  sha256 'e2d39cc371db386b625b4741a9bc1c3089671fc3bd04cf951e40d934d7fe540d'

  url 'http://flavio.tordini.org/files/musictube/musictube.dmg'
  appcast 'http://flavio.tordini.org/musictube-ws/appcast.xml'
  name 'Musictube'
  homepage 'http://flavio.tordini.org/musictube'

  app 'Musictube.app'
end
