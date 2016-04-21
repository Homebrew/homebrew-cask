cask 'arq' do
  version '5.0.4'
  sha256 '79594c693de2f2479d8e8e80ff5e9c8af51292aa6ed7f9d8b1568d9dc1405eea'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '4cad67c33ca6b5db33668e28719b43c0a9519dfefd9ce32c0dd0f9f0ebef4035'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'
  license :commercial

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
