cask "multitouch" do
  version "1.24.9,136"
  sha256 "9417c7d2c20dcfe003d844633360beb5701aa30b47d93e3533056ecce5400981"

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
