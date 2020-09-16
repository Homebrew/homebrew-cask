cask "backuploupe" do
  version "3.0.6"
  sha256 "0772aa299bf0f5f14a169696b5c651b426836ad80efefd90e63a0ceb8faafb2f"

  url "https://www.soma-zone.com/download/files/BackupLoupe-#{version}.tar.bz2"
  appcast "https://www.soma-zone.com/BackupLoupe/a/appcast-update-#{version.major}.xml"
  name "BackupLoupe"
  desc "Alternative GUI for Time Machine"
  homepage "https://www.soma-zone.com/BackupLoupe/"

  app "BackupLoupe.app"
end
