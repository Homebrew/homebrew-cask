cask "portx" do
  version "2.0.3,10.11"
  sha256 "88d0e9e59f28820cbc825e0ab170b4b84c9fdcfd5f03b8d2b2c5c34daaa173dd"

  url "https://cdn.netsarang.net/0ac7ea20/PortX-#{version.before_comma}.dmg",
      verified: "cdn.netsarang.net/"
  name "portx"
  desc "SSH Client"
  homepage "https://portx.online/en/portx/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "PortX.app"

  zap trash: [
    "~/Library/Application Support/PortX",
    "~/Library/Logs/PortX",
  ]
end
