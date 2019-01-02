cask 'arq' do
  version '5.14.3'
  sha256 '9e6794c5f19d6706b6663c7cfeb799110815f5d38830bd298057fc86936087f6'

  url "https://www.arqbackup.com/download/arqbackup/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arqbackup/arq#{version.major}.xml"
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
