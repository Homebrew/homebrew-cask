cask "portx" do
  version "1.1.1"
  sha256 "be19b6d953697e9e6137dec10139cc867a270d8ed0598ff7e2ed70781f2810ac"

  url "https://cdn.netsarang.net/0ac7ea20/PortX-#{version}.dmg", verified: "cdn.netsarang.net"
  name "portx"
  desc "Aims to provide unparalleled cross-platform session management and usability"
  homepage "https://www.netsarang.com/en/"

  app "PortX.app"
end
