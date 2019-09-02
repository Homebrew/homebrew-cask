cask 'ibackup-viewer' do
  version '4.1540'
  sha256 '5f0ec5dcd1142421b2ed6bbb55ec05f25234cf3b28440ac9bd8d1b2de3739992'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
