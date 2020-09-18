cask "multitouch" do
  version "1.18.5"
  sha256 "c09ab2642d5d5312c8f9555f597f94d890be6ee7be336fcfccac2c80918fb66f"

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
