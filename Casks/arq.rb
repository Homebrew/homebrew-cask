cask 'arq' do
  version '5.7.8'
  sha256 'f28e9be19fc634d8e5ac74ce949e0a466887cd0f4663e63179e512c0fa940e14'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '8520d26eae290d9938383f4c27d9b3ccdeeff0ccf056897dcc7e8ac4ef0a5cea'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
