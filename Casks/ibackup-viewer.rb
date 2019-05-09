cask 'ibackup-viewer' do
  version '4.1400'
  sha256 'a171756a9d2af6cf21299907cbf74603758b86de81a520fa5bb51b477706365b'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
