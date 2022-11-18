cask "portx" do
  arch arm: "arm64", intel: "x64"

  version "2.1.8,10.36"
  sha256 arm:   "63EA0DD95EAAC0CDD19CD2AFA033833A95CF38B6A85CEA80BEFC27FE4A2762A4",
         intel: "3E3FC625201029944A6DC14EF030420C770BD3986976615A6254267668D3A74B"

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
