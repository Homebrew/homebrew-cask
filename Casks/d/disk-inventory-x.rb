cask "disk-inventory-x" do
  version "1.3"
  sha256 "78af3506435adaa53d8cc2ce601cac2e13b56e708358eb3bde2c3aa322bad8e5"

  url "https://www.derlien.com/diskinventoryx/downloads/Disk%20Inventory%20X%20#{version}.dmg",
      user_agent: :fake
  name "Disk Inventory X"
  desc "Disk usage utility"
  homepage "https://www.derlien.com/"

  livecheck do
    url "https://www.derlien.com/download.php?file=DiskInventoryX"
    strategy :header_match
  end

  depends_on macos: ">= :high_sierra"

  app "Disk Inventory X.app"

  zap trash: "~/Library/Preferences/com.derlien.DiskInventoryX.plist"

  caveats do
    requires_rosetta
  end
end
