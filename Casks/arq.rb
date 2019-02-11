cask 'arq' do
  version '5.15.3'
  sha256 'b02cde3fca9b60c6ce5ab83aa641efe992e48cda997bd92e106aa19c894c45df'

  url "https://www.arqbackup.com/download/arqbackup/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arqbackup/arq#{version.major}.xml"
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
