cask "ibackup-viewer" do
  version "4.2100"
  sha256 :no_check

  url "https://www.imactools.com/download/iBackupViewer.dmg"
  name "iBackup Viewer"
  desc "Extract Data from iPhone Backups"
  homepage "https://www.imactools.com/iphonebackupviewer/"

  livecheck do
    url "https://www.imactools.com/update/ibackupviewer.xml"
    strategy :sparkle
  end

  app "iBackup Viewer.app"
end
