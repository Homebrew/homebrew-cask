cask 'ibackup-viewer' do
  version '4.1100'
  sha256 '27880d2871dd42d056d5f26cbf5bcb9342c30dde100daaa6adf61e97c5e24bbb'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
