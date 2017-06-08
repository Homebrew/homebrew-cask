cask 'arq' do
  version '5.8.6'
  sha256 '0f488137af538e8761b670ee7e69f033572b3a5800e43dac8a40b8ebeafad562'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: 'c4d184bbab0eb181cec46d0343bc6e3bec0619546ef12a306ad8a9ddbde59bd6'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
