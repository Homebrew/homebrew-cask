cask "textbuddy" do
  version "1.4.3,28"
  sha256 "d86d9102d1c2b815ef4f5d762886ef45f68026cec7960f94202b866d5ffdbd2a"

  url "https://get.retina.studio/textbuddy/textbuddy_#{version.csv.second}.zip"
  name "TextBuddy"
  desc "Convert, filter, sort, and transform text"
  homepage "https://retina.studio/textbuddy/"

  livecheck do
    url "https://dash.retina.studio/appcast.php?id=58"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "TextBuddy.app"

  zap trash: [
        "~/Library/Application Support/com.clickontyler.TextBuddy",
        "~/Library/Caches/CloudKit/com.clickontyler.TextBuddy",
        "~/Library/Caches/com.clickontyler.TextBuddy",
        "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.clickontyler.TextBuddy",
        "~/Library/HTTPStorages/com.clickontyler.TextBuddy",
        "~/Library/HTTPStorages/com.clickontyler.TextBuddy.binarycookies",
        "~/Library/Preferences/com.clickontyler.TextBuddy.plist",
      ],
      rmdir: "~/Library/Caches/com.plausiblelabs.crashreporter.data"
end
