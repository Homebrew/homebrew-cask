cask 'ibackup-viewer' do
  version '4.1520'
  sha256 '7f7759af908b05404d3277a50ecdbe479f8fb72125d308615acb428001242407'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
