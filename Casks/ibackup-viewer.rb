cask 'ibackup-viewer' do
  version '4.0820'
  sha256 '12d133168e0695d64a41675b1ecac55620099b53acaca28c29199157bf5e08a4'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
