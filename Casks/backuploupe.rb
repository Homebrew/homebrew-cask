cask "backuploupe" do
  version "3.2.1"
  sha256 "c52a46ed8242f25bbb632921ec9fc956d30d8b9f9b2a2b85a405f5b332aeb9f6"

  url "https://www.soma-zone.com/download/files/BackupLoupe-#{version}.tar.bz2"
  appcast "https://www.soma-zone.com/BackupLoupe/a/appcast-update-#{version.major}.xml"
  name "BackupLoupe"
  desc "Alternative GUI for Time Machine"
  homepage "https://www.soma-zone.com/BackupLoupe/"

  app "BackupLoupe.app"
end
