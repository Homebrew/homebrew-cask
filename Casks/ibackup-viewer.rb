cask 'ibackup-viewer' do
  version '4.1404'
  sha256 '6551641488f55119438cf2241331af146f2628abb4e47c88622880bd2a686e37'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
