cask "multitouch" do
  version "2.0.3"
  sha256 "c9b723c940349d32086458352bfb3ec551811bf8c7a7e5df3a406ae97988183f"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.brassmonkery.multitouch.sfl*",
    "~/Library/Application Support/Multitouch",
    "~/Library/Caches/com.brassmonkery.Multitouch",
    "~/Library/Cookies/com.brassmonkery.Multitouch.binarycookies",
    "~/Library/HTTPStorages/com.brassmonkery.Multitouch",
    "~/Library/HTTPStorages/com.brassmonkery.Multitouch.binarycookies",
    "~/Library/Preferences/com.brassmonkery.Multitouch.plist",
  ]
end
