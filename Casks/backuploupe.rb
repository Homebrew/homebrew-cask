cask "backuploupe" do
  version "3.2.3"
  sha256 "2e36ae70078e36ddd0db400ba87eb70650ae862f8c7f1c94aecdbdc9c75a3b92"

  url "https://www.soma-zone.com/download/files/BackupLoupe-#{version}.tar.bz2"
  appcast "https://www.soma-zone.com/BackupLoupe/a/appcast-update-#{version.major}.xml"
  name "BackupLoupe"
  desc "Alternative GUI for Time Machine"
  homepage "https://www.soma-zone.com/BackupLoupe/"

  app "BackupLoupe.app"
end
