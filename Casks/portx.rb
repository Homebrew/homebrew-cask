cask "portx" do
  arch arm: "arm64", intel: "x64"

  version "2.1.7,10.35"
  sha256 arm:   "728EE27094185A6F3A129724FB447D75F55E001F9282AE052C7964D2DCA518FD",
         intel: "9F73B4C41600AEEEA8CE5AB97499E03486DA4274541D1F14A874289CB46FDDBE"

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
