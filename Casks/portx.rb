cask "portx" do
  arch arm: "arm64", intel: "x64"

  version "2.1.13,10.45"
  sha256 arm:   "381A56ED749783D6F5A3AEB5B79552856539869B6C8BCDEC13E4D017916E1CCB",
         intel: "1ABACD4456CAF280E32FB0434DB951C2141E438AE242F9FA9C13EA3C11251948"

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
