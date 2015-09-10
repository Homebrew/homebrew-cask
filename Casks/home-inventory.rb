cask :v1 => 'home-inventory' do
  version :latest
  sha256 :no_check

  url 'http://binaryformations.com/homeinventory/HomeInventory.dmg'
  name 'Home Inventory'
  homepage 'http://binaryformations.com/products/home-inventory/'
  license :commercial

  depends_on :macos => '>= 10.7'
  app 'Home Inventory.app'
end
