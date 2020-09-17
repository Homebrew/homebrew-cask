cask "soundsource" do
  version "5.0.3"
  sha256 "3221a1c63c7d441a02c02db30dcbd1f340592946f4d4a30a9ef34f44c5c05c48"

  url "https://rogueamoeba.com/soundsource/download/SoundSource.zip"
  appcast "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.soundsource&system=10146&version=5000000"
  name "SoundSource"
  desc "Sound and audio controller"
  homepage "https://rogueamoeba.com/soundsource/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "SoundSource.app"
end
