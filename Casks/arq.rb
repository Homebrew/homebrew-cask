cask 'arq' do
  version '5.1.9'
  sha256 '4df7748386c8d7edd37cd295d8c39c7a47a762b24ded201593f41085b5fe4e72'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: 'da46b33d90ea33d8aa6cedc0fe33f97f8051424d29ac4c2644dc41ac36f6a0e1'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'
  license :commercial

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
