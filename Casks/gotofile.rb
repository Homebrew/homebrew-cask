cask 'gotofile' do
  version '1.0.3'
  sha256 '2baf82a8ac3a01f5751f8049327c4f4f63a923155d828d633ba39c3b34dbbb7c'

  url "http://www.soma-zone.com/download/files/GoToFile_#{version}.tbz"
  appcast 'https://somazonecom.ipage.com/soma-zone.com/GoToFile/a/appcast_update.xml',
          checkpoint: '588d3935e336cd644f9a133634c8a357071691922091bda3f9028219d7828da9'
  name 'GoToFile'
  homepage 'http://www.soma-zone.com/GoToFile/'

  app 'GoToFile.app'
end
