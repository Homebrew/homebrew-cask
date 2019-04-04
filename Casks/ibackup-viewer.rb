cask 'ibackup-viewer' do
  version '4.1250'
  sha256 'a3bcdc0adcc0e20659db124959d815721d7df8484af8d581b0e5e92fabca4101'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
