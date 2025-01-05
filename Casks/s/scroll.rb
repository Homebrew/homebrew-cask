cask "scroll" do
  version "2.4.7"
  sha256 "eb6a37cc0d2436d96da496b29d9d5083dc4dabff764422d1bf29db8688d8bc51"

  url "https://ryanhanson.dev/scroll/downloads/Scroll#{version}.dmg"
  name "Scroll"
  desc "Configure scrolling on Trackpad and Magic Mouse"
  homepage "https://ryanhanson.dev/scroll"

  livecheck do
    url "https://ryanhanson.dev/scroll/downloads/updates.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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
