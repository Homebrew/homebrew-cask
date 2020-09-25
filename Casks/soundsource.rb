cask "soundsource" do
  version "5.0.5"
  sha256 "f4d0dce55aa7ba6303736342f0ea013496e0dfe36640a020956163aced552fee"

  url "https://rogueamoeba.com/soundsource/download/SoundSource.zip"
  appcast "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.soundsource&system=10146&version=5000000"
  name "SoundSource"
  desc "Sound and audio controller"
  homepage "https://rogueamoeba.com/soundsource/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "SoundSource.app"
end
