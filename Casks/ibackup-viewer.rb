cask 'ibackup-viewer' do
  version '4.1402'
  sha256 '4d258eb2f8b7bacbb2d572d9b991a0b2fbe7dd42ff60e349d1b8b38effa28217'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
