cask "neofinder" do
  version "7.6.1"
  sha256 "5ad14b256b7ab883c1ae8fd7b66920453beed044bbdf4c3ae8cdbb0c135de4a0"

  # wfs-apps.de/ was verified as official when first introduced to the cask
  url "https://www.wfs-apps.de/updates/neofinder.#{version}.zip"
  appcast "https://www.wfs-apps.de/updates/neofinder-appcast-64.xml"
  name "NeoFinder"
  desc "Digital media asset manager"
  homepage "https://www.cdfinder.de/"

  app "NeoFinder.app"
end
