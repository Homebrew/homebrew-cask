cask 'arq' do
  version '5.1.8'
  sha256 '0207b2f5aa5fa8041f40c433b2f57dced907a5d9237fbabce7fff64709590351'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '1eaf3da851fe1f2898e4d8ca94dc679d1f34301ae3119f7db1edd09145472ef6'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'
  license :commercial

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
