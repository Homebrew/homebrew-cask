cask 'arq' do
  version '5.1.2'
  sha256 'b2a096544e56d7269605b34e36166282a34b2e088fb3c1f1e553e67016a128a7'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: 'ed5cbf74be385005e87425fd87445915e47ebb676da1ef7b762b68ec3f87c750'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'
  license :commercial

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
