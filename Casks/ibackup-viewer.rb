cask 'ibackup-viewer' do
  version '4.1030'
  sha256 'b5a7a02618c7259ddca48354cf5f3de0b659d122288703c0bea111347d8f9e18'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
