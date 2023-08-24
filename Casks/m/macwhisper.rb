cask "macwhisper" do
  version "4.1,310"
  sha256 "04793c8eb95e0ab520173d6ff7774476550b00eb4b5b9b09a8b976eeffe661e3"

  url "https://macwhisper-site.vercel.app/releases/MacWhisper-#{version.csv.second}.zip",
      verified: "macwhisper-site.vercel.app/releases/"
  name "MacWhisper"
  desc "Speech recognition tool"
  homepage "https://goodsnooze.gumroad.com/l/macwhisper"

  livecheck do
    url "https://macwhisper-site.vercel.app/appcast.xml"
    strategy :sparkle
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
    "~/Library/WebKit/com.goodsnooze.MacWhisper",
  ]
end
