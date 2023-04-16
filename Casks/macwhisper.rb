cask "macwhisper" do
  version "2.16,86"
  sha256 "096f7b41e304b1d29b76cc7e90065f7d0b7a70c3e45aaa07c5acb489af306341"

  url "https://macwhisper-site.vercel.app/releases/MacWhisper-#{version.csv.second}.zip",
      verified: "macwhisper-site.vercel.app/"
  name "macwhisper"
  desc "Speech recognition tool"
  homepage "https://goodsnooze.gumroad.com/l/macwhisper"

  livecheck do
    url "https://macwhisper-site.vercel.app/appcast.xml"
    strategy :sparkle
  end

  app "MacWhisper.app"

  zap trash: [
    "~/Library/Application Scripts/com.goodsnooze.MacWhisper",
    "~/Library/Application Support/MacWhisper",
    "~/Library/Caches/com.goodsnooze.MacWhisper",
    "~/Library/Containers/com.goodsnooze.MacWhisper",
    "~/Library/HTTPStorages/com.goodsnooze.MacWhisper",
    "~/Library/HTTPStorages/com.goodsnooze.MacWhisper.binarycookies",
    "~/Library/Preferences/com.goodsnooze.MacWhisper.plist",
    "~/Library/WebKit/com.goodsnooze.MacWhisper",
  ]
end
