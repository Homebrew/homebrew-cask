cask "backuploupe" do
  version "3.2.1"
  sha256 "edce74918f82215e05cadc408d13aa1240e429bbd0d2af795c9d65ebc49e6bcc"

  url "https://www.soma-zone.com/download/files/BackupLoupe-#{version}.tar.bz2"
  appcast "https://www.soma-zone.com/BackupLoupe/a/appcast-update-#{version.major}.xml"
  name "BackupLoupe"
  desc "Alternative GUI for Time Machine"
  homepage "https://www.soma-zone.com/BackupLoupe/"

  app "BackupLoupe.app"
end
