cask "multitouch" do
  version "2.0.2"
  sha256 "b4020bf9dabbbf64c93aa5a6fff968dad4de451a1e3a1212e643e9d9f013711e"

  url "https://multitouch.app/downloads/multitouch#{version}.dmg"
  name "Multitouch"
  desc "Add more gestures for Trackpad and Magic Mouse"
  homepage "https://multitouch.app/"

  livecheck do
    url "https://multitouch.app/downloads/updates.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Multitouch.app"

  uninstall quit: "com.brassmonkery.Multitouch"

  zap trash: [
    "~/Library/Application Support/Multitouch",
    "~/Library/Caches/com.brassmonkery.Multitouch",
    "~/Library/Cookies/com.brassmonkery.Multitouch.binarycookies",
    "~/Library/HTTPStorages/com.brassmonkery.Multitouch",
    "~/Library/HTTPStorages/com.brassmonkery.Multitouch.binarycookies",
    "~/Library/Preferences/com.brassmonkery.Multitouch.plist",
  ]
end
