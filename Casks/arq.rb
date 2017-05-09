cask 'arq' do
  version '5.8.3'
  sha256 '5f61ee5d9c455b2f53f41675dfc19b731ef6137218decb72f20e635688d72b0d'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '09e429c36be615ddaa33720bdd4f64df650ebd29c323d4d69fd14e217ab740f8'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
