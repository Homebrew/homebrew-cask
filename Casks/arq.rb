cask 'arq' do
  version '5.11.1'
  sha256 'c100dc14d680b29a01381b9892731399e8cebcbe23f232cf6925d4dc6b3f0d17'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: 'd0eb47f743c6349eeb998e702524114f600cdbc7a5e0503591ff6a77444afe2d'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
