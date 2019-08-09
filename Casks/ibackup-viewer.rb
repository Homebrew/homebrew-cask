cask 'ibackup-viewer' do
  version '4.1530'
  sha256 '268237b2991d6acc6432b968a74c827e117a30d5fedf52d338ba5ee7a568c8e1'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
