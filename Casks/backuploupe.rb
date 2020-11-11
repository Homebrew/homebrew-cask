cask "backuploupe" do
  version "3.1"
  sha256 "51b8bd3c30642d201b3178d69a421930ac9d96190c761f44ddd3da6692041a70"

  url "https://www.soma-zone.com/download/files/BackupLoupe-#{version}.tar.bz2"
  appcast "https://www.soma-zone.com/BackupLoupe/a/appcast-update-#{version.major}.xml"
  name "BackupLoupe"
  desc "Alternative GUI for Time Machine"
  homepage "https://www.soma-zone.com/BackupLoupe/"

  app "BackupLoupe.app"
end
