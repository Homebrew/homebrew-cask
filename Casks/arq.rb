cask 'arq' do
  version '5.2.1'
  sha256 '0e8c9c8c68f236225030f8f5de61279346e1b0248a8bdc95361647acc2d3c4e9'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '8611900cd67e08f79b05483d41e5c49dd6bfe70803437076ba67e0487567fa71'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'
  license :commercial

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
