cask "portx" do
  arch arm: "arm64", intel: "x64"

  version "2.1.14,10.46"
  sha256 arm:   "07E602C343C4FB5984E4748BFA9D6B30EB7A40B7C1F4684382BF4A16EF41D87A",
         intel: "3D36B21451C337850237B692BCAFD67F8174750F5B0EA4F888A0694215E5E4D2"

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
