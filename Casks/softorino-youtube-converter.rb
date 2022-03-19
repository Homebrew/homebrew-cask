cask "softorino-youtube-converter" do
  version "4.0.21"
  sha256 "a0d6e858476b2500c43568b9fb91a4e988dd9787f64b13f3277b9244cb3de832"

  url "https://ushining.softorino.com/shine_uploads/softorinoyoutubeconverter2mac_#{version}.dmg"
  name "Softorino YouTube Converter"
  desc "YouTube downloader and converter"
  homepage "https://softorino.com/youtube-converter/"

  livecheck do
    url "https://api.softorino.com/live/app-manager/v3/syc2/mac/updates"
    strategy :sparkle
  end

  auto_updates true

  app "Softorino YouTube Converter 2.app"

  zap trash: [
    "/Users/Shared/Softorino YouTube Converter 2",
    "~/Library/Application Support/Softorino YouTube Converter 2",
    "~/Library/Caches/com.softorino.syc2",
    "~/Library/Logs/com.softorino.syc2",
    "~/Library/Preferences/com.softorino.syc2.plist",
    "~/Library/Saved Application State/com.softorino.syc2.savedState",
  ]
end
