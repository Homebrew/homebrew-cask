cask 'ibackup-viewer' do
  version '4.1510'
  sha256 '9d4e4c24fbb84d0dbeca3441aaa04a34891561c970852891280b87f80ffb4a36'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
