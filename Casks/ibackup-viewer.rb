cask 'ibackup-viewer' do
  version '4.101'
  sha256 '310ac33db548ec75062c5d909a1aadd8d83893448b0f919c47178536aca08d0c'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
