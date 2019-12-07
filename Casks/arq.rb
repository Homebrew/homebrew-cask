cask 'arq' do
  version '5.17.2'
  sha256 '0b2ed4d8d84b7659e46e38949e3127d793757884a5456c3cef09909007d1236d'

  url "https://www.arqbackup.com/download/arqbackup/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arqbackup/arq#{version.major}.xml"
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
