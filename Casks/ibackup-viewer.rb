cask 'ibackup-viewer' do
  version '4.1020'
  sha256 '4b3425a78ed109bdb834d08427cc8b008f89d515381ff08440f68b95c8001e66'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
