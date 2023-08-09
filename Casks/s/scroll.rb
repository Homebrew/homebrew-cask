cask "scroll" do
  version "2.4.2"
  sha256 "5775cd6e179f29720852aca65acb6df91e8af4704f66080783cec96cc5c4ca14"

  url "https://ryanhanson.dev/scroll/downloads/Scroll#{version}.dmg"
  name "Scroll"
  desc "Configure scrolling on Trackpad and Magic Mouse"
  homepage "https://ryanhanson.dev/scroll"

  livecheck do
    url "https://ryanhanson.dev/scroll/downloads/updates.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :mojave"

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
