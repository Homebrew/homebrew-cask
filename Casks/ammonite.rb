cask 'ammonite' do
  version '1.18'
  sha256 '377097c98f5ab9d90fa180e2f24adfb9bd5092e8c0c4a7cb6c21e43aca16b4ff'

  url "http://www.soma-zone.com/download/files/Ammonite-#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/Ammonite/a/appcast.xml'
  name 'Ammonite'
  homepage 'http://www.soma-zone.com/Ammonite/'

  app 'Ammonite.app'
end
