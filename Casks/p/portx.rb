cask "portx" do
  arch arm: "arm64", intel: "x64"

  version "2.2.3,10.50"
  sha256 arm:   "238186E09045C8D6E002E5B60CBDD09B739D7948E8408CB4B897F233A42122BE",
         intel: "02CB1DCC775C68C84CF711C4643C82BF90DF56828E80C79A52406B63C08E77DD"

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
