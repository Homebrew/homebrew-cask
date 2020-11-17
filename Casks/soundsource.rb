cask "soundsource" do
  version "5.1.3"
  sha256 "9ba283c65f767242e947984daa7de765b2aee5db2cd25d69b7a6b0260de2e531"

  url "https://rogueamoeba.com/soundsource/download/SoundSource.zip"
  appcast "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.soundsource&system=10146&version=5000000"
  name "SoundSource"
  desc "Sound and audio controller"
  homepage "https://rogueamoeba.com/soundsource/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "SoundSource.app"
end
