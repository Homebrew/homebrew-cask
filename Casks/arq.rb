cask 'arq' do
  version '5.11.3'
  sha256 'ecc0628d06f1dbc9ceac6a98608714b1cedfc5b49c7b892827ff8f042d8a1ba2'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '3830f8bbf0198f28e8001115d7f14a7e71db8f528af8b93db110eb3509418012'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
