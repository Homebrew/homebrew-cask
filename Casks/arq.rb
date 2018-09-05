cask 'arq' do
  version '5.13.2'
  sha256 '9b6ea003e2732105e69c5078da363d2e634e2f635633a53f47a6c7ebc0a4f442'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml"
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
