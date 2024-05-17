cask "portx" do
  arch arm: "arm64", intel: "x64"

  version "2.2.6,10.55"
  sha256 arm:   "181CE3FF7C2E9F8B47A099CC94274204ED0713944F807AA3F532A48F2E6DE560",
         intel: "510D32F5A57E7CA765D0788F7259C3B5B7D2FC19F509F80451B93520A6FDB149"

  url "https://cdn.netsarang.net/0ac7ea20/PortX-#{version.csv.first}-#{arch}.dmg",
      verified: "cdn.netsarang.net/"
  name "portx"
  desc "SSH Client"
  homepage "https://portx.online/"

  livecheck do
    url "https://cdn.netsarang.net/0ac7ea20/PortX-latest-#{arch}.dmg"
    strategy :extract_plist
  end

  depends_on macos: ">= :catalina"

  app "PortX.app"

  zap trash: [
    "~/Library/Application Support/PortX",
    "~/Library/Logs/PortX",
  ]
end
