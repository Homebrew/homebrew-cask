cask 'ibackup-viewer' do
  version '4.1590'
  sha256 'e7a2d58f37d5039e2524141a5b21e000e816ae3b9cd582d1072fd32acc538b49'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
