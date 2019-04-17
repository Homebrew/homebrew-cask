cask 'ibackup-viewer' do
  version '4.1260'
  sha256 'b5ae65fb885ca3a998248aea25f5e837b4c908cfd0e3d35e7cc48b01858e3490'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
