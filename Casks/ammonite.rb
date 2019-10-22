cask 'ammonite' do
  version '1.19'
  sha256 'e1927f636d697aedd86ff3b52c7a10d15d9829ea05fb6d5b47209e5bd1f4181f'

  url "https://www.soma-zone.com/download/files/Ammonite-#{version}.tar.bz2"
  appcast 'https://www.soma-zone.com/Ammonite/a/appcast.xml'
  name 'Ammonite'
  homepage 'https://www.soma-zone.com/Ammonite/'

  app 'Ammonite.app'
end
