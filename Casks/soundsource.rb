cask "soundsource" do
  version "5.0.0"
  sha256 "bd1252c860a0f7ef3a98ed71b78a26874f2e5a7a493caebe00e6021d7f5698e3"

  url "https://rogueamoeba.com/soundsource/download/SoundSource.zip"
  appcast "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.soundsource&system=10146&version=5000000"
  name "SoundSource"
  homepage "https://rogueamoeba.com/soundsource/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "SoundSource.app"
end
