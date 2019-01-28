cask 'arq' do
  version '5.15'
  sha256 '1cd15a0a736cafec08147c64614877f7e463123cbdb0ede3a682939b780c2e6f'

  url "https://www.arqbackup.com/download/arqbackup/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arqbackup/arq#{version.major}.xml"
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
