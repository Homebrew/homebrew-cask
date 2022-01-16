cask "scroll" do
  version "2.3,23"
  sha256 "212acef8d07b6d8425d35664266952fad91ede55ad33a0272677a240e42b82cd"

  url "https://ryanhanson.dev/scroll/downloads/Scroll#{version.csv.first}.dmg"
  name "Scroll"
  desc "Configure scrolling on Trackpad and Magic Mouse"
  homepage "https://ryanhanson.dev/scroll/"

  livecheck do
    url "https://ryanhanson.dev/scroll/downloads/updates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Scroll.app"

  uninstall quit: "com.knollsoft.Scroll"

  zap trash: [
    "~/Library/Application Support/Scroll",
    "~/Library/Caches/com.knollsoft.Scroll",
    "~/Library/Cookies/com.knollsoft.Scroll.binarycookies",
    "~/Library/HTTPStorages/com.knollsoft.Scroll",
    "~/Library/HTTPStorages/com.knollsoft.Scroll.binarycookies",
    "~/Library/Preferences/com.knollsoft.Scroll.plist",
  ]
end
