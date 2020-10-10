cask "multitouch" do
  version "1.19"
  sha256 "b62bd542846434d4acae6eb2c27bb2643a6e0c0f9c57d6f15dbf7255eb95d1ae"

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
