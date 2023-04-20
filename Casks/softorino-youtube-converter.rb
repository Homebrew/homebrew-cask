cask "softorino-youtube-converter" do
  version "4.0.22"
  sha256 "de3a41bed8fc157b6b82607556213a4fe28fc8ec8370bef28a99670950fb5f36"

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
