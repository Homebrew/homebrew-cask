cask "macwhisper" do
  version "10.4,1021"
  sha256 "a75296cd7c44bcf30436a559111fe3e073dec74a2d2d33c3df7b2893be29300a"

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
