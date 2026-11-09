cask "macwhisper" do
  version "15.10,1591"
  sha256 "e1d1f633eca0aa4e831617b4049c2e6475f8600cd676487415fe0cbffa50628d"

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
    "~/Library/Application Scripts/8Q7TMPA46J.group.com.goodsnooze.macwhisper.share",
    "~/Library/Application Scripts/com.goodsnooze.MacWhisper",
    "~/Library/Application Scripts/com.goodsnooze.MacWhisper.ShareExtension",
    "~/Library/Application Support/com.goodsnooze.MacWhisper",
    "~/Library/Application Support/MacWhisper",
    "~/Library/Caches/com.goodsnooze.MacWhisper",
    "~/Library/Containers/com.goodsnooze.MacWhisper",
    "~/Library/Containers/com.goodsnooze.MacWhisper.ShareExtension",
    "~/Library/Group Containers/8Q7TMPA46J.group.com.goodsnooze.macwhisper.share",
    "~/Library/HTTPStorages/com.goodsnooze.MacWhisper",
    "~/Library/HTTPStorages/com.goodsnooze.MacWhisper.binarycookies",
    "~/Library/Preferences/com.goodsnooze.MacWhisper.plist",
    "~/Library/Saved Application State/com.goodsnooze.MacWhisper.savedState",
    "~/Library/WebKit/com.goodsnooze.MacWhisper",
  ]
end
