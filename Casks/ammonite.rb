cask 'ammonite' do
  version '1.18.1'
  sha256 '533e6bf3ce9379ab1cd214c2e01c950946d1d0ab9c9f674dfbc3f4e91df2587e'

  url "https://www.soma-zone.com/download/files/Ammonite-#{version}.tar.bz2"
  appcast 'https://www.soma-zone.com/Ammonite/a/appcast.xml'
  name 'Ammonite'
  homepage 'https://www.soma-zone.com/Ammonite/'

  app 'Ammonite.app'
end
