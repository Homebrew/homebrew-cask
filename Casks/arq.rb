cask 'arq' do
  version '5.10'
  sha256 'ddc8619cc957ade7ca51ae5fc3d0f048f170b71c9a57bf53d283ffcec8e15fc4'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '9c249908088d35cc6fdb77e9113e42230eebf1946d82a1b4121626187e62484a'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
