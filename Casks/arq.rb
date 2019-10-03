cask 'arq' do
  version '5.16.2'
  sha256 'f953be8d47e937e3dffe23111b838aa6d871ef6b61eb4807dfee558b2d61395a'

  url "https://www.arqbackup.com/download/arqbackup/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arqbackup/arq#{version.major}.xml"
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
