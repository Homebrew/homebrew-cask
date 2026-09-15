cask "macwhisper" do
  version "15.0.1,1502"
  sha256 "a34118e363da0f7bce2eab6546f74217873390f5e18e77f7987c8a43a97a11d1"

  url "https://cdn.macwhisper.com/macwhisper/MacWhisper-#{version.csv.second}#{"_#{version.csv.third}" if version.csv.third}.zip"
  name "MacWhisper"
  desc "Speech recognition tool"
  homepage "https://goodsnooze.gumroad.com/l/macwhisper"

  # Older items in the Sparkle feed may have a newer pubDate, so it's necessary
  # to work with all of the items in the feed (not just the newest one).
  livecheck do
    url "https://macwhisper-site.vercel.app/appcast.xml"
    regex(/MacWhisper[._-]v?(?:\d+(?:\.\d+)*)(?:_(\h+))?\.zip/i)
    strategy :sparkle do |items, regex|
      items.map do |item|
        version_suffix = item.url.match(regex)
        next item.nice_version if version_suffix.nil? || version_suffix[1].blank?

        "#{item.nice_version},#{version_suffix[1]}"
      end
    end
  end

  auto_updates true
  depends_on macos: :sequoia

  app "MacWhisper.app"

  uninstall quit: "com.goodsnooze.MacWhisper"

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
