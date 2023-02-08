cask "portx" do
  arch arm: "arm64", intel: "x64"

  version "2.1.10,10.38"
  sha256 arm:   "FD1D67F779F192C3AF8D1465DE238345AEF0C047CA74D26DD07A1C6918CA2929",
         intel: "8F852DAAFEC315A0F95CD5E20E23633F40FE70E0810264C53FC634B776FC3D80"

  url "https://cdn.netsarang.net/0ac7ea20/PortX-#{version.csv.first}-#{arch}.dmg",
      verified: "cdn.netsarang.net/"
  name "portx"
  desc "SSH Client"
  homepage "https://portx.online/"

  livecheck do
    url "https://cdn.netsarang.net/0ac7ea20/PortX-latest-#{arch}.dmg"
    strategy :extract_plist
  end

  app "PortX.app"

  zap trash: [
    "~/Library/Application Support/PortX",
    "~/Library/Logs/PortX",
  ]
end
