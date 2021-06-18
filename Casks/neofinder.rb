cask "neofinder" do
  version "7.8"
  sha256 "bccb4e0d3ad94dbfc4d353194b25409c292808e1208e956e754619b7d8b8c7b5"

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
