cask "backuploupe" do
  version "3.1"
  sha256 "1e21beea3a6b76472dd08d9f25cec819cc054bf424240989c99e58955eda080c"

  url "https://www.soma-zone.com/download/files/BackupLoupe-#{version}.tar.bz2"
  appcast "https://www.soma-zone.com/BackupLoupe/a/appcast-update-#{version.major}.xml"
  name "BackupLoupe"
  desc "Alternative GUI for Time Machine"
  homepage "https://www.soma-zone.com/BackupLoupe/"

  app "BackupLoupe.app"
end
