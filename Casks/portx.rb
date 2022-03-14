cask "portx" do
  version "2.0.8,10.20"
  sha256 "7955F67EC22A4AC153614023FC8F970DDFAFA8372065F1ADE394A7EB7F8A0F71"

  url "https://cdn.netsarang.net/0ac7ea20/PortX-#{version.csv.first}.dmg",
      verified: "cdn.netsarang.net/"
  name "portx"
  desc "SSH Client"
  homepage "https://portx.online/en/portx/"

  livecheck do
    url "https://cdn.netsarang.net/0ac7ea20/PortX-latest.dmg"
    strategy :extract_plist
  end

  app "PortX.app"

  zap trash: [
    "~/Library/Application Support/PortX",
    "~/Library/Logs/PortX",
  ]
end
