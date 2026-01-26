cask "elgato-game-capture-hd" do
  version "2.11.14"
  sha256 "e00efce3433cad902400c610f4816fbecce414868a53aec70ef2d8ded9c1ba74"

  url "https://edge.elgato.com/egc/macos/egcm/#{version}/final/Game_Capture_HD_#{version}.zip"
  name "Elgato Game Capture HD"
  desc "Elgato video capture and streaming app"
  homepage "https://www.elgato.com/ww/en/s/downloads"

  livecheck do
    url "https://gc-updates.elgato.com/mac/egcm-update#{version.major}-rss/?dbg=0&lang=English"
    strategy :sparkle, &:short_version
  end

  app "Game Capture HD.app"

  zap trash: [
    "~/Library/Application Support/Game Capture HD",
    "~/Library/Caches/com.elgato.GameCaptureHD",
    "~/Library/Caches/Game Capture HD",
    "~/Library/Logs/elgato.log",
    "~/Library/Preferences/com.elgato.GameCaptureHD.plist*",
  ]

  caveats do
    requires_rosetta
  end
end
