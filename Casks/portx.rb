cask "portx" do
  version "1.1.3"
  sha256 "1ac70309669c4f8cd48a63f12095b62b66012483dc4eaba635e40f86735255e8"

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
