cask 'ibackup-viewer' do
  version '4.1581'
  sha256 'cb5120c3619d3883f304cc2a8a8912b2f66abcfb9c96cde9a96cf07ce1a36fef'

  url 'https://www.imactools.com/download/iBackupViewer.dmg'
  appcast 'https://www.imactools.com/update/ibackupviewer.xml'
  name 'iBackup Viewer'
  homepage 'https://www.imactools.com/iphonebackupviewer/'

  app 'iBackup Viewer.app'
end
