cask 'gotofile' do
  version '1.1.3'
  sha256 'a646cfec1eff2f9d2f021acf4841143b219d255ba4ef5bc492a159b0940091aa'

  url "http://www.soma-zone.com/download/files/GoToFile_#{version}.tbz"
  appcast 'https://somazonecom.ipage.com/soma-zone.com/GoToFile/a/appcast_update.xml',
          checkpoint: '6695d30c7ce2cfddc35c6231c637feee403a19bfd825ee863874571a52d549c3'
  name 'GoToFile'
  homepage 'http://www.soma-zone.com/GoToFile/'

  app 'GoToFile.app'
end
