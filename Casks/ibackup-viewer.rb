cask 'ibackup-viewer' do
  version '4.1403'
  sha256 'a5097234e64faca8110d30af45dfe7f6db3c116955293562c6e6cafb9c5de543'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
