cask "flying-carpet" do
  version "4.0"
  sha256 "2fe59870692dcab3d16d9bcaad8295dbb83405aea8d5bdb1e9eea75fa9baa084"

  url "https://github.com/spieglt/FlyingCarpet/releases/download/v#{version}/FlyingCarpetMac.zip"
  name "Flying Carpet"
  desc "File transfer over ad-hoc wifi"
  homepage "https://github.com/spieglt/flyingcarpet"

  app "Flying Carpet.app"
end
