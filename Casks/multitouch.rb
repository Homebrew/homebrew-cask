cask "multitouch" do
  version "1.21"
  sha256 "4d3d4467ffbb55ea4644a401df54ddffc60b5673bd61131e16a0c51e552ab7f3"

  url "https://multitouch.app/downloads/multitouch#{version}.dmg"
  appcast "https://www.multitouch.app/downloads/updates.xml"
  name "Multitouch"
  homepage "https://multitouch.app/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Multitouch.app"

  zap trash: [
    "~/Library/Preferences/com.brassmonkery.Multitouch",
    "~/Library/Application Support/Multitouch",
    "~/Library/Caches/com.brassmonkery.Multitouch",
  ]
end
