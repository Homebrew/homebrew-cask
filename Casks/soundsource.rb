cask "soundsource" do
  version "5.1.0"
  sha256 "9363d0a2ba8a1118c0a16d13f88cb243557e54bb56ae50360e9f8c5a91e3bdb3"

  url "https://rogueamoeba.com/soundsource/download/SoundSource.zip"
  appcast "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.soundsource&system=10146&version=5000000"
  name "SoundSource"
  desc "Sound and audio controller"
  homepage "https://rogueamoeba.com/soundsource/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "SoundSource.app"
end
