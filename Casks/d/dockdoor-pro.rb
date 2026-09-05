cask "dockdoor-pro" do
  version "1.3.2"
  sha256 "7c3937c3bf11b2a590946714c57b1ec2e11a2f2cb0b42a9252438530ff3bdd62"

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
