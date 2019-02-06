cask 'arq' do
  version '5.15.2'
  sha256 '1c184156dea472986800133a6fb158a11053fabb630c23e2955e8648f0b93f4e'

  url "https://www.arqbackup.com/download/arqbackup/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arqbackup/arq#{version.major}.xml"
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
