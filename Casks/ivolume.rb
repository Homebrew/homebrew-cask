cask "ivolume" do
  version "3.9.0,2260"
  sha256 :no_check

  url "https://www.mani.de/download/ivolume/iVolume3Mac.dmg"
  name "iVolume"
  desc "App to ensures that all songs are played at the same volume level"
  homepage "https://www.mani.de/en/ivolume/"

  app "iVolume.app"

  zap trash: [
    "~/Library/Application Support/de.ivolume.mac",
    "~/Library/Caches/de.ivolume.mac",
    "~/Library/Preferences/de.ivolume.mac.plist",
  ]
end
