cask "backuploupe" do
  version "3.3.5,2204"
  sha256 "d908955d325ec9c980cf17cead4d2f0c564d03164eea8c21c91df52fd96dce8c"

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
