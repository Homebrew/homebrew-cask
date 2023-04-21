cask "portx" do
  arch arm: "arm64", intel: "x64"

  version "2.1.11,10.39"
  sha256 arm:   "231061B6DAFBAAD1DA6ED9F4E71E95E4E3C8BBDD98395182A6F40C94FF227AFA",
         intel: "63978F3BE39B9E028258E3CB3B3CB7DB50F53BC4D3BA2C1B36E94AA8D1F5490E"

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
