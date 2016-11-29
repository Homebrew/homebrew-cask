cask 'musictube' do
  version '1.6'
  sha256 'b86f46d2beb44ae7e2536f155b4f455f6f3fa63b05f6b591f79bc564b49aa6d5'

  url 'http://flavio.tordini.org/files/musictube/musictube.dmg'
  appcast 'http://flavio.tordini.org/musictube-ws/appcast.xml',
          checkpoint: '979ab554fea8ee4d2d66063f2ad49645dde118e2a1ecea7935c64f034883424d'
  name 'Musictube'
  homepage 'http://flavio.tordini.org/musictube'

  app 'Musictube.app'
end
