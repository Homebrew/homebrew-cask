cask "portx" do
  arch arm: "arm64", intel: "x64"

  version "2.2.5,10.52"
  sha256 arm:   "FEC219835FC4B6A616BE480F3BBBC1569EB396887C69327C5AF9A55F710D0F66",
         intel: "7FB68D6BCF2381071D49659967E677AA262868702B79C9B058488D36C51B6BC0"

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
