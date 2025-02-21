cask "dockdoor" do
  version "1.6.2"
  sha256 "d1c0387d391b74a15d596b2243dedfa279b0b3d5406b98628cd0d0a1eff1b69d"

  url "https://github.com/ejbills/DockDoor/releases/download/v#{version}/DockDoor.dmg",
      verified: "github.com/ejbills/DockDoor/"
  name "DockDoor"
  desc "Window peeking utility app"
  homepage "https://dockdoor.net/"

  livecheck do
    url "https://dockdoor.net/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "DockDoor.app"

  zap trash: [
    "~/Library/Application Support/DockDoor",
    "~/Library/Caches/com.ethanbills.DockDoor",
    "~/Library/HTTPStorages/com.ethanbills.DockDoor",
    "~/Library/Preferences/com.ethanbills.DockDoor.plist",
  ]
end
