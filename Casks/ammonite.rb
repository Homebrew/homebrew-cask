cask 'ammonite' do
  version '1.20'
  sha256 '1f8b34ef2f57305f85acfe09feab85049ca8e77c812182eee9061d478b65e877'

  url "https://www.soma-zone.com/download/files/Ammonite-#{version}.tar.bz2"
  appcast 'https://www.soma-zone.com/Ammonite/a/appcast_update.xml'
  name 'Ammonite'
  homepage 'https://www.soma-zone.com/Ammonite/'

  app 'Ammonite.app'
end
