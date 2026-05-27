cask "sid-jukebox" do
  version "1.0"
  sha256 "f4a5175c3b43c82f053ec62ed08e4d753545161a1165ca58e88ae161070943ea"

  url "https://github.com/serkantanriverdi/sidJukeBox/releases/download/v#{version}/SIDJukebox_v#{version}.dmg"
  name "SID Jukebox"
  desc "Native macOS player for Commodore 64 SID music"
  homepage "https://github.com/serkantanriverdi/sidJukeBox"

  app "SID Jukebox.app"

  zap trash: [
    "~/Library/Preferences/com.serkantanriverdi.SIDJukebox.plist",
  ]
end
