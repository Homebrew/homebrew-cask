cask "neofinder" do
  version "7.7"
  sha256 "55baccf186dc8aa073e96a7c0da355da247c71a6d6bf142858678d89fd596f55"

  url "https://www.wfs-apps.de/updates/neofinder.#{version}.zip",
      verified: "wfs-apps.de/"
  name "NeoFinder"
  desc "Digital media asset manager"
  homepage "https://www.cdfinder.de/"

  livecheck do
    url "https://www.wfs-apps.de/updates/neofinder-appcast-64.xml"
    strategy :sparkle
  end

  app "NeoFinder.app"
end
