cask "protopie" do
  version "5.4.2"
  sha256 "b431687013ca6756c1ab2f0fd5ef9d13a779f0837ac23c2799f2b462d1a78598"

  url "https://release.protopie.io/ProtoPie-#{version}.dmg"
  name "ProtoPie"
  homepage "https://www.protopie.io/"

  livecheck do
    url "https://download.protopie.io/darwin/latest"
    strategy :header_match
  end

  auto_updates true

  app "ProtoPie.app"
end
