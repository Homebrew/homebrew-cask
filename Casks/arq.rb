cask 'arq' do
  version '5.14'
  sha256 '50e50d5233dcbf3ecf08aa996654802cf74bdbf5a25fbdd4f4396c800f1ce167'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml"
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
