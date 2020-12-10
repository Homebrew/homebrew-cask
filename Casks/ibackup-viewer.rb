cask "ibackup-viewer" do
  version "4.1720"
  sha256 :no_check

  url "https://www.imactools.com/download/iBackupViewer.dmg"
  appcast "https://www.imactools.com/update/ibackupviewer.xml"
  name "iBackup Viewer"
  homepage "https://www.imactools.com/iphonebackupviewer/"

  app "iBackup Viewer.app"
end
