cask "dockdoor-pro" do
  version "1.3.7b1"
  sha256 "44747c03ad4b511b65f43dc864f2438ad91bb3a3512a494fb9f3b4085733bab1"

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
