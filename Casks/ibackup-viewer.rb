cask 'ibackup-viewer' do
  version '4.1550'
  sha256 'be6829766424a504eab239f6eeeae78b0594c126937ea25b356c7c57962c44ce'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
