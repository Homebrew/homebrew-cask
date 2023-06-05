cask "ivolume" do
  version "3.9.0"
  sha256 :no_check

  url "https://www.mani.de/download/ivolume/iVolume#{version.major}Mac.dmg"
  name "iVolume"
  desc "App to ensures that all songs are played at the same volume level"
  homepage "https://www.mani.de/en/ivolume/"

  livecheck do
    url "https://www.mani.de/en/ivolume/history.html"
    regex(/iVolume\s+(\d+(?:\.\d+)+)/i)
  end

  app "iVolume.app"

  zap trash: [
    "~/Library/Application Support/de.ivolume.mac",
    "~/Library/Caches/de.ivolume.mac",
    "~/Library/Preferences/de.ivolume.mac.plist",
  ]
end
