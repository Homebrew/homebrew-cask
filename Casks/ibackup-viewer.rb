cask 'ibackup-viewer' do
  version '4.1582'
  sha256 '2ce0e8f93bc6e505ecb6d128b158c77556790091835d6cb56f7ef00e7176da48'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
