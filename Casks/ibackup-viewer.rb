cask 'ibackup-viewer' do
  version '4.1210'
  sha256 '96f68ae1205c552217eec42a7fa22544bda73e3db782b487d84e3a9322b7029d'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
