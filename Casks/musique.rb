cask 'musique' do
  version '1.5'
  sha256 'b5e9c6716a3fe39214dcf7744a5053303d32005d07ed4eaa78679d4015bd048b'

  url 'https://flavio.tordini.org/files/musique/musique.dmg'
  appcast 'https://flavio.tordini.org/musique-ws/appcast.xml'
  name 'Musique'
  homepage 'https://flavio.tordini.org/musique'

  app 'Musique.app'
end
