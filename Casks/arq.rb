cask 'arq' do
  version '5.2.3'
  sha256 '6309a1e15f1533d48b93c4815839cdeed9884515069f77f44b0ebd7c622893c4'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: 'b4fa430a2cc69cde7161758e2d0bf1a894085a1bf716a24700aed163af4563f1'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'
  license :commercial

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
