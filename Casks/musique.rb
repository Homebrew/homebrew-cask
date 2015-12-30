cask 'musique' do
  version :latest
  sha256 :no_check

  url 'http://flavio.tordini.org/files/musique/musique.dmg'
  appcast 'http://flavio.tordini.org/musique-ws/appcast.xml',
          :sha256 => '3cebec0525bba0365792d2863845951335a62c758ad585c84e52333a73b0e218'
  name 'Musique'
  homepage 'http://flavio.tordini.org/musique'
  license :commercial

  app 'Musique.app'
end
