cask 'ibackup-viewer' do
  version '4.1240'
  sha256 '970c02ff5cf13f1fa660e0f770b8342b416bf99c79be55545e8b236970196662'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
