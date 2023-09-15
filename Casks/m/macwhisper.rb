cask "macwhisper" do
  version "4.6,361"
  sha256 "4166ed01c7dbc6511a41536fd86dca82375fa14b191e15fdc4ef9a2c5de01984"

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
