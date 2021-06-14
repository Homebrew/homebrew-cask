cask "backuploupe" do
  version "3.4,2232"
  sha256 "a78f95665691b103937bd83fe1188a8fff7405ab861970b857a2d2d81baa6365"

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
