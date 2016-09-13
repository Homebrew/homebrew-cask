cask 'arq' do
  version '5.2.3'
  sha256 '6309a1e15f1533d48b93c4815839cdeed9884515069f77f44b0ebd7c622893c4'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '613aad759904faf96d1e6abdde4c14ec776fa2507dceda4d672377885ffd090d'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'
  license :commercial

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
