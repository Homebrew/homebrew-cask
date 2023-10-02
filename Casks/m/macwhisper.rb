cask "macwhisper" do
  version "5.2,420"
  sha256 "2e9622e1d1c9101bb142561232fa7e3342ebf4b6d90610d5decb5d867528c51a"

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
