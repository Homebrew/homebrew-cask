cask "5kplayer" do
  version "6.9.0"
  sha256 :no_check

  url "https://www.5kplayer.com/download/5kplayer.dmg"
  name "5KPlayer"
  desc "Play 4K/1080p/360 degree video, MP3 AAC APE FLAC music without quality loss"
  homepage "https://www.5kplayer.com/"

  livecheck do
    url "https://www.5kplayer.com/upgrade/mac/updatecast.xml"
    strategy :sparkle, &:short_version
  end

  app "5KPlayer.app"

  uninstall quit: "com.digiarty.5kplayer"

  zap trash: [
    "~/Library/Caches/com.digiarty.5kplayer",
    "~/Library/Preferences/com.digiarty.5kplayer.plist",
    "~/Library/Saved Application State/com.digiarty.5kplayer.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
