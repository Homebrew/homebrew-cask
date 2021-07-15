cask "portx" do
  version "1.1.4,10.2"
  sha256 :no_check

  url "https://cdn.netsarang.net/0ac7ea20/PortX-latest.dmg",
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
