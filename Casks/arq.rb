cask 'arq' do
  version '5.7.4'
  sha256 '2990921e9e3c8cac21e35dd94a8ebf60936a77eb7d8918b181927107bad92c80'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '029c64129584926ca19cf784fdaf92ba2c0c231613263b5364fdabd838928c2c'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
