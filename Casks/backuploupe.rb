cask "backuploupe" do
  version "3.5.1,2262"
  sha256 "c78f9235fe8909840f1e2056a0776be62da26bb800d2dab1c4c579276f685338"

  url "https://www.soma-zone.com/download/files/BackupLoupe-#{version.before_comma}.tar.bz2"
  name "BackupLoupe"
  desc "Alternative GUI for Time Machine"
  homepage "https://www.soma-zone.com/BackupLoupe/"

  livecheck do
    url "https://www.soma-zone.com/BackupLoupe/a/appcast-update-#{version.major}.xml"
    strategy :sparkle
  end

  app "BackupLoupe.app"
end
