cask "backuploupe" do
  version "3.5,2255"
  sha256 "92ce6f4c27ffb87d93f1c986f7a56471f54e4e5f01147242895115e630462c6e"

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
