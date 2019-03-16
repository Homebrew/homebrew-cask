cask 'ibackup-viewer' do
  version '4.1220'
  sha256 'c885a106d41fa9baff9f7b08d20988e91a82b97eab0d8080b6642ad33ab9a245'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
