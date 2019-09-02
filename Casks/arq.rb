cask 'arq' do
  version '5.16.1'
  sha256 '9517eecae50d7164a868387b383c6a32895496c6db03cceb8d4bd22980a2a8f5'

  url "https://www.arqbackup.com/download/arqbackup/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arqbackup/arq#{version.major}.xml"
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
