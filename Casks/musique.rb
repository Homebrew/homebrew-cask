cask 'musique' do
  version '1.6'
  sha256 '4feb88a633abda99b498bcb00b510f395fcc7fc747990825ac9cc215e666aded'

  url 'https://flavio.tordini.org/files/musique/musique.dmg'
  appcast 'https://flavio.tordini.org/musique-ws/appcast.xml'
  name 'Musique'
  homepage 'https://flavio.tordini.org/musique'

  app 'Musique.app'
end
