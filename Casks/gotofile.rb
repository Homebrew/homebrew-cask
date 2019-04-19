cask 'gotofile' do
  version '1.5'
  sha256 '971e3d1455a6e4ce3d8cde524a31279c85805c61f612a806d59decff3cba82f9'

  url "http://www.soma-zone.com/download/files/GoToFile-#{version}.tar.bz2"
  appcast 'https://somazonecom.ipage.com/soma-zone.com/GoToFile/a/appcast_update.xml'
  name 'GoToFile'
  homepage 'http://www.soma-zone.com/GoToFile/'

  app 'GoToFile.app'
end
