cask 'arq' do
  version '5.17.1'
  sha256 'f8468091b8d2a977bd64f9a7c1f3a05b10cafe73b3aaf9ec13764f75b90da489'

  url "https://www.arqbackup.com/download/arqbackup/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arqbackup/arq#{version.major}.xml"
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
