cask 'arq' do
  version '5.12.2'
  sha256 '42c04688688417ef5301a2ce43d5bda67b474f5fe7b185358829c807da20a59c'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml"
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
