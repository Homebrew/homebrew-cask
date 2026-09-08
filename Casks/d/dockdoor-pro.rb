cask "dockdoor-pro" do
  version "1.3.5"
  sha256 "81a26bfc4a5541776950e7dcf8f657ee6461510805e0d9673a6ec40d2b2834fb"

  url "https://downloads.dockdoor.net/v/#{version}/DockDoorPro.dmg"
  name "DockDoor Pro"
  desc "Dock replacement with widgets, profiles and window previews"
  homepage "https://pro.dockdoor.net/"

  livecheck do
    url "https://pro.dockdoor.net/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "DockDoor Pro.app"

  uninstall quit: "com.ejbills.DockDoorPro"

  zap trash: [
    "~/Library/Application Support/DockDoorPro",
    "~/Library/Caches/com.ejbills.DockDoorPro",
    "~/Library/HTTPStorages/com.ejbills.DockDoorPro",
    "~/Library/Preferences/com.ejbills.DockDoorPro.plist",
  ]
end
