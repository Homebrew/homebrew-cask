cask "flying-carpet" do
  version "5.0"
  sha256 "83ac946b4cf9be1164c361bcbcb8a195bb636686a0eb3efa471d3888951b4264"

  url "https://github.com/spieglt/FlyingCarpet/releases/download/v#{version}/FlyingCarpetMac.zip"
  name "Flying Carpet"
  desc "File transfer over ad-hoc wifi"
  homepage "https://github.com/spieglt/flyingcarpet"

  app "Flying Carpet.app"
end
