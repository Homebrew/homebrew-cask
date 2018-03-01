cask 'arq' do
  version '5.11.2'
  sha256 'a174f1264a1ffd9d4d6a72d5af97038d709e449d43ec9aa08803b1d6877bfe87'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '5aa34cb7a15fc3d3553e6429f42a6b39235fa038db59c15ac53118c413e681c5'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
