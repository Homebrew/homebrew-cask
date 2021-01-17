cask "multitouch" do
  version "1.22.1,125"
  sha256 "f423171aed0a1c532c9d6a981ad245fd8e288f3b8f59e4091ba509b31b3773d3"

  url "https://multitouch.app/downloads/multitouch#{version.before_comma}.dmg"
  name "Multitouch"
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
