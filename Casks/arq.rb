cask 'arq' do
  version '5.1.6'
  sha256 'f937689cc4196edda85244df647a01ea78c0d5bf13d7b9ea5bf47ace954d9e9d'

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
