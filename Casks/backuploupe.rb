cask "backuploupe" do
  version "3.0.5"
  sha256 "64ce28441002b7e2d4c0bfe43bc8624f40314f340c0f5043319f570689c968d5"

  url "https://www.soma-zone.com/download/files/BackupLoupe-#{version}.tar.bz2"
  appcast "https://www.soma-zone.com/BackupLoupe/a/appcast-update-#{version.major}.xml"
  name "BackupLoupe"
  homepage "https://www.soma-zone.com/BackupLoupe/"

  app "BackupLoupe.app"
end
