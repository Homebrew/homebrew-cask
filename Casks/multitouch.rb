cask "multitouch" do
  version "1.20.4"
  sha256 "2040ed2aa603648485d99aa73867d989ac51b8c2029f95f130b596827439f672"

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
