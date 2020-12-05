cask "multitouch" do
  version "1.20.2"
  sha256 "ddebd91164124170d4e403607e8b3ff81c215df2e4c09cc4570cbc12f21c9e3f"

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
