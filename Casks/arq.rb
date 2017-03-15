cask 'arq' do
  version '5.7.7'
  sha256 'f621677984da8cd9e07443616415809c465e20ff68eb5b3bae0a7e2001422f82'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '1bdd950022421a769b9f0dffbbb0369975cb171607f216e840452b294569f17e'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
