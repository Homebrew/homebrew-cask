cask "portx" do
  arch arm: "arm64", intel: "x64"

  version "2.1.6,10.34"
  sha256 arm:   "7FE1AD1DDC980BF36CE0408C5BC4F29143A8DACD9860DC476F177C7F4B6056A3",
         intel: "F6AEF7981A9EF548D86DAA9CF369E0B5D24F9EF075CA154DDB7E9FEEF66CFC9D"

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
