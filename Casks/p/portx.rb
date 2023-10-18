cask "portx" do
  arch arm: "arm64", intel: "x64"

  version "2.2.1,10.48"
  sha256 arm:   "B77EF89E3849102A101C62BED1082159E604002CCED9EA7E823CA6A12EC105AD",
         intel: "7316A81B2D46713D48D58A92D599B4340CC4B7586AE90EFCE8ADD7A8C232282D"

  url "https://cdn.netsarang.net/0ac7ea20/PortX-#{version.csv.first}-#{arch}.dmg",
      verified: "cdn.netsarang.net/"
  name "portx"
  desc "SSH Client"
  homepage "https://portx.online/"

  livecheck do
    url "https://cdn.netsarang.net/0ac7ea20/PortX-#{version.csv.first}-#{arch}.dmg"
    strategy :extract_plist
  end

  app "PortX.app"

  zap trash: [
    "~/Library/Application Support/PortX",
    "~/Library/Logs/PortX",
  ]
end
