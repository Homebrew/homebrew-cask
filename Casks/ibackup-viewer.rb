cask 'ibackup-viewer' do
  version '4.1520'
  sha256 'f17a95b6199dbc41a31570fd244f90c2ad4a005bfdd834f14f65a905dded1237'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
