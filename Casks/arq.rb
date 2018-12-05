cask 'arq' do
  version '5.14.2'
  sha256 '5429d75cec415a00b84fe7d8730d43bde8cab022b7d420de0c6b53a833ef4e46'

  url "https://www.arqbackup.com/download/arqbackup/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arqbackup/arq#{version.major}.xml"
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
