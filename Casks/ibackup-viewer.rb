cask 'ibackup-viewer' do
  version '4.1401'
  sha256 'cee136a22cdfef31f1fc85c295d1451d6d6d5c0f278227d1d81e156f6f2c51aa'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
