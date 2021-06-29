cask "portx" do
  version "1.1.1"
  sha256 "be19b6d953697e9e6137dec10139cc867a270d8ed0598ff7e2ed70781f2810ac"

  url "https://cdn.netsarang.net/0ac7ea20/PortX-#{version}.dmg",
      verified: "cdn.netsarang.net/"
  name "portx"
  desc "SSH Client"
  homepage "https://portx.online/en/portx/"

  livecheck do
    url :homepage
    regex(/PortX-(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "PortX.app"

  zap trash: [
    "~/Library/Application Support/PortX",
    "~/Library/Logs/PortX",
  ]
end
