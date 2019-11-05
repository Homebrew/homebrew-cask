cask 'ibackup-viewer' do
  version '4.1580'
  sha256 'e7f4d272ef7c06e2d8f6a7dd8b47bbb72df36235271d24e54853cadf111d4f85'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
