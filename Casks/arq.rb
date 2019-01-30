cask 'arq' do
  version '5.15.1'
  sha256 '05838de02052a8c9e006ee5efa95860ed267468487c52699bc4d10d582be2caa'

  url "https://www.arqbackup.com/download/arqbackup/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arqbackup/arq#{version.major}.xml"
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
