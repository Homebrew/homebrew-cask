cask 'gotofile' do
  version '1.3.2'
  sha256 '9185ecaf4039b1d16274b23e52282b97c57581e1f3757fc58dacb4e103a1584a'

  url "http://www.soma-zone.com/download/files/GoToFile_#{version}.tbz"
  appcast 'https://somazonecom.ipage.com/soma-zone.com/GoToFile/a/appcast_update.xml'
  name 'GoToFile'
  homepage 'http://www.soma-zone.com/GoToFile/'

  app 'GoToFile.app'
end
