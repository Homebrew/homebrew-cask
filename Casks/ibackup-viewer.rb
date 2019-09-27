cask 'ibackup-viewer' do
  version '4.1560'
  sha256 'c2d74ab0235698a4860a2e8b70588fff611c7e0d0d0f7c0a208953e0f5182e6f'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
