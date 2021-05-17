cask "multitouch" do
  version "1.24.11,138"
  sha256 "cc937a1e6dded57402cf6a688bc66f209f0320e2f8f7fa69a09a1f77cdc93586"

  url "https://multitouch.app/downloads/multitouch#{version.before_comma}.dmg"
  name "Multitouch"
  desc "Add more gestures for Trackpad and Magic Mouse"
  homepage "https://multitouch.app/"

  livecheck do
    url "https://www.multitouch.app/downloads/updates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Multitouch.app"

  zap trash: [
    "~/Library/Preferences/com.brassmonkery.Multitouch",
    "~/Library/Application Support/Multitouch",
    "~/Library/Caches/com.brassmonkery.Multitouch",
  ]
end
