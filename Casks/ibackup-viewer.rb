cask 'ibackup-viewer' do
  version '4.1230'
  sha256 '662a93a4c1d4d92ec05f3235112d6f1b7576bbc04906441a3e1de8862aafea64'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
