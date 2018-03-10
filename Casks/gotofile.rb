cask 'gotofile' do
  version '1.1.4'
  sha256 '11369f519fe69a6f7a580a8f8762b6282a796570c4e8a4009ad08fe6f92bd921'

  url "http://www.soma-zone.com/download/files/GoToFile_#{version}.tbz"
  appcast 'https://somazonecom.ipage.com/soma-zone.com/GoToFile/a/appcast_update.xml',
          checkpoint: '32d43e18ffbd7f3cf79de4af954845a92b37e76c2e0847fa95553bb53ba4f314'
  name 'GoToFile'
  homepage 'http://www.soma-zone.com/GoToFile/'

  app 'GoToFile.app'
end
