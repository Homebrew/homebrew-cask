cask "backuploupe" do
  version "3.0.4"
  sha256 "eec416e294d362418acc1c320b7e14aadcd04802a86cffa393651b45a4a412d0"

  url "https://www.soma-zone.com/download/files/BackupLoupe-#{version}.tar.bz2"
  appcast "https://www.soma-zone.com/BackupLoupe/a/appcast-update-#{version.major}.xml"
  name "BackupLoupe"
  homepage "https://www.soma-zone.com/BackupLoupe/"

  app "BackupLoupe.app"
end
