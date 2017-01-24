cask 'arq' do
  version '5.7.2'
  sha256 '9e9212c6cfc0fcd7dd73c35e280f742ac4ade80197c800875269e46e1dd9a77f'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '2b2f2e0e637fc60438bd683b55fa3bcfcaaf04a60ead31f864ae5e712c6c5ec0'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
