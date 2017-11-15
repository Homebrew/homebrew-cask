cask 'arq' do
  version '5.9.5'
  sha256 'a7e0443ef3b9b85334534bd5c24eebb0818801d7e3a6981ed24174f37f023102'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '28abc03fca70e072d26da055ab44490c6839efcf06921db2ea43c155b024af1a'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
