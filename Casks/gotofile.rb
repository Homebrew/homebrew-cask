cask 'gotofile' do
  version '1.2'
  sha256 'bb427741cd0e5bc871836fafdea8bc72345eea557e399e5c9bd75cb08a16ff02'

  url "http://www.soma-zone.com/download/files/GoToFile_#{version}.tbz"
  appcast 'https://somazonecom.ipage.com/soma-zone.com/GoToFile/a/appcast_update.xml',
          checkpoint: 'fb50c536bf0563c8631fcdd8b04e44ad3ee4fefa91b49f4fc59c20eaa0d4b4c9'
  name 'GoToFile'
  homepage 'http://www.soma-zone.com/GoToFile/'

  app 'GoToFile.app'
end
