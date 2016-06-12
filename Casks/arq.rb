cask 'arq' do
  version '5.1.4'
  sha256 'd4ed861482aa735e0e9867274798910eb2447a4531d30be8c75d9c8733029af2'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '487d31f3399ab6e10b5e9fc81f7afff185b0d84fd9749de7a62f6ca1dab08af6'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'
  license :commercial

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
