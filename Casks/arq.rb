cask 'arq' do
  version '5.12.1'
  sha256 '16cb7d8457efdd702976d13a005abd333b585a08992340bc0d3f114c135647b8'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml"
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
