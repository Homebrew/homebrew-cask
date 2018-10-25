cask 'arq' do
  version '5.14.1'
  sha256 '90bda44a0ac760a08decd2e887829557ed7669de9f82975a747729558865391b'

  url "https://www.arqbackup.com/download/arqbackup/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arqbackup/arq#{version.major}.xml"
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
