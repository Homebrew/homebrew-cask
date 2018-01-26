cask 'musictube' do
  version '1.8.1'
  sha256 'e2d39cc371db386b625b4741a9bc1c3089671fc3bd04cf951e40d934d7fe540d'

  url 'http://flavio.tordini.org/files/musictube/musictube.dmg'
  appcast 'http://flavio.tordini.org/musictube-ws/appcast.xml',
          checkpoint: '0b1a0f027759eb2d6516a7350a24cd4aba8586a8318dd9e3b4fd247bf9495419'
  name 'Musictube'
  homepage 'http://flavio.tordini.org/musictube'

  app 'Musictube.app'
end
