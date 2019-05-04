cask 'ibackup-viewer' do
  version '4.1300'
  sha256 '8c36604ba646ac75a3d7f2168ffaaf775222f331c40a6f1d3db7155c8719c2f5'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
