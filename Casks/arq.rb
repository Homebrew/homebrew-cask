cask 'arq' do
  version '5.17.3'
  sha256 '98db29e7b18dcfd388b001451f3367b72844bf6f59e170bea38c967231a59d19'

  url "https://www.arqbackup.com/download/arqbackup/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arqbackup/arq#{version.major}.xml"
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
