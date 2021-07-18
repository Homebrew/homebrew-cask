cask "portx" do
  version "1.1.4"
  sha256 "2c612c434fa76b943af6d583293354063b3180334d976bcb804ade1606bbbd07"

  url "https://cdn.netsarang.net/0ac7ea20/PortX-#{version}.dmg",
      verified: "cdn.netsarang.net/"
  name "portx"
  desc "SSH Client"
  homepage "https://portx.online/en/portx/"

  livecheck do
    url :url
    regex(/PortX-(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "PortX.app"

  zap trash: [
    "~/Library/Application Support/PortX",
    "~/Library/Logs/PortX",
  ]
end
