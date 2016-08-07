cask 'arq' do
  version '5.1.9'
  sha256 '4df7748386c8d7edd37cd295d8c39c7a47a762b24ded201593f41085b5fe4e72'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: 'a12f28ea9323c04bb6ed94e416ac0879855cbc3ac3cba504f36fc2c0077f57b3'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'
  license :commercial

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
