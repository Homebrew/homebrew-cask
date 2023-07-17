cask "macwhisper" do
  version "3.3.1,180"
  sha256 "fe7b06efcbd4767dc9d7a1bb4f314d957b2fe6250cad2dceb6b6360ceca03e56"

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
