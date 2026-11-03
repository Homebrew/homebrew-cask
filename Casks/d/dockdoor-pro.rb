cask "dockdoor-pro" do
  version "1.7.5"
  sha256 "f0a3408c2e5f13a6bd422f7074a4eb9f6077e789e743e2014d22806ea52e8061"

  url "https://downloads.dockdoor.net/v/#{version}/DockDoorPro.dmg"
  name "DockDoor Pro"
  desc "Dock replacement with widgets, profiles and window previews"
  homepage "https://pro.dockdoor.net/"

  livecheck do
    url "https://pro.dockdoor.net/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.short_version
    end
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
