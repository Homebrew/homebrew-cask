cask 'ibackup-viewer' do
  version '4.1040'
  sha256 '58e0d3cd6be3acd882f5cb41c9cca3712bc8d11fde5e68ed887af4712b57588d'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
