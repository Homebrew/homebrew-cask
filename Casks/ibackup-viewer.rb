cask 'ibackup-viewer' do
  version '4.1591'
  sha256 '9c60c08382570b845532a75d082501b05717049718b9ae27125bb14e0753efa8'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
