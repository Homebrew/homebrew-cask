cask "portx" do
  arch arm: "arm64", intel: "x64"

  version "2.2.4,10.51"
  sha256 arm:   "86B4E198780396676576BB136415A7295A98B234CC4E4C34FC3450B6D47BF803",
         intel: "EEBEE90192285B2932F411A4CACAA4FF19ADCC8F81FE067945084E100CB77B59"

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
