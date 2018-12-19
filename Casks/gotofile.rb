cask 'gotofile' do
  version '1.3.3'
  sha256 '3eb0f1887517b1dca97a1ffc4818c5a16c98c9323174db71fa07521fe105fedd'

  url "http://www.soma-zone.com/download/files/GoToFile_#{version}.tbz"
  appcast 'https://somazonecom.ipage.com/soma-zone.com/GoToFile/a/appcast_update.xml'
  name 'GoToFile'
  homepage 'http://www.soma-zone.com/GoToFile/'

  app 'GoToFile.app'
end
