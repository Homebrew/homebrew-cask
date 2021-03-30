cask "multitouch" do
  version "1.24.5,132"
  sha256 "fc048f2c7c4bda23ba6a533803f7aea97a495918a84bf123bf893fbe4f73a29a"

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
