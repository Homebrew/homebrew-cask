cask 'ibackup-viewer' do
  version '4.1500'
  sha256 '1f94b3055d454caed803d55b93937dcea2a0f12a151e9b475917b6e47dc56542'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
