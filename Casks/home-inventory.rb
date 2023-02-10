cask "home-inventory" do
  version "3.8.6,20210517"
  sha256 :no_check

  url "https://binaryformations.com/homeinventory/HomeInventory.dmg"
  name "Home Inventory"
  desc "Documentation application for home and belongings"
  homepage "https://binaryformations.com/products/home-inventory/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :sierra"

  app "Home Inventory.app"
end
