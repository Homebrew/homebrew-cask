cask 'arq' do
  version '5.16'
  sha256 '9e54d4da3259e80ce8f82209622d47ea1fb38fab70e8db23bc53c63fb626263e'

  url "https://www.arqbackup.com/download/arqbackup/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arqbackup/arq#{version.major}.xml"
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
