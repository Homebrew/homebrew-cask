cask "5kplayer" do
  version "6.10.0"
  sha256 :no_check

  url "https://www.5kplayer.com/download/5kplayer.dmg"
  name "5KPlayer"
  desc "Play 4K/1080p/360-degree video, MP3/AAC/APE/FLAC music without quality loss"
  homepage "https://www.5kplayer.com/"

  # The version sometimes isn't updated in the short version,
  # but only in the title. We check for that instead.
  livecheck do
    url "https://www.5kplayer.com/upgrade/mac/updatecast.xml"
    regex(/(?:Version\s+)?v?(\d+(?:\.\d+)+)/i)
    strategy :sparkle do |item, regex|
      item.title[regex, 1]
    end
  end

  auto_updates true

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
