cask 'gotofile' do
  version '1.3.1'
  sha256 '1b785c0937b43a40fa9c3161be9d5b7da6dcaa11c29aaffdcff5416764f58ce9'

  url "http://www.soma-zone.com/download/files/GoToFile_#{version}.tbz"
  appcast 'https://somazonecom.ipage.com/soma-zone.com/GoToFile/a/appcast_update.xml',
          checkpoint: '0866226d8bb7db463ac6b4c5e5202fed1536fbd01ed56200dc7fe8b590f5e8ae'
  name 'GoToFile'
  homepage 'http://www.soma-zone.com/GoToFile/'

  app 'GoToFile.app'
end
