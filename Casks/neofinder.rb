cask "neofinder" do
  version "7.7"
  sha256 "55baccf186dc8aa073e96a7c0da355da247c71a6d6bf142858678d89fd596f55"

  # wfs-apps.de/ was verified as official when first introduced to the cask
  url "https://www.wfs-apps.de/updates/neofinder.#{version}.zip"
  appcast "https://www.wfs-apps.de/updates/neofinder-appcast-64.xml"
  name "NeoFinder"
  desc "Digital media asset manager"
  homepage "https://www.cdfinder.de/"

  app "NeoFinder.app"
end
