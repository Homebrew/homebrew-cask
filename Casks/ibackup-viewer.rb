cask 'ibackup-viewer' do
  version '4.100'
  sha256 '2ada2c57103557b5c261c6d76c37de71476ff15f8a2cb9f7349cde068d4a9db7'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
