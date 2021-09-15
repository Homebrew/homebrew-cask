cask "neofinder" do
  version "7.8.1"
  sha256 "5a54256c5c7abc98b8d2d777b7168eec3a5d5b7c48b4414ef1d71ea8f82b84cc"

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
