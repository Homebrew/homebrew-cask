cask "macwhisper" do
  version "9.1,840"
  sha256 "1a1f8283825ba1f441e1c600b313b7ac9f204d5dbe5b03bc39aa79b4f4865399"

  url "https://stickytimers.app/macwhisper/MacWhisper-#{version.csv.second}.zip",
      verified: "stickytimers.app/macwhisper/"
  name "MacWhisper"
  desc "Speech recognition tool"
  homepage "https://goodsnooze.gumroad.com/l/macwhisper"

  # Older items in the Sparkle feed may have a newer pubDate, so it's necessary
  # to work with all of the items in the feed (not just the newest one).
  livecheck do
    url "https://macwhisper-site.vercel.app/appcast.xml"
    strategy :sparkle do |items|
      items.map { |item| "#{item.short_version},#{item.version}" }
    end
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "MacWhisper.app"

  zap trash: [
    "~/Library/Application Scripts/com.goodsnooze.MacWhisper",
    "~/Library/Application Support/MacWhisper",
    "~/Library/Caches/com.goodsnooze.MacWhisper",
    "~/Library/Containers/com.goodsnooze.MacWhisper",
    "~/Library/HTTPStorages/com.goodsnooze.MacWhisper",
    "~/Library/HTTPStorages/com.goodsnooze.MacWhisper.binarycookies",
    "~/Library/Preferences/com.goodsnooze.MacWhisper.plist",
    "~/Library/Saved Application State/com.goodsnooze.MacWhisper.savedState",
    "~/Library/WebKit/com.goodsnooze.MacWhisper",
  ]
end
