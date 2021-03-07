cask "protopie" do
  version "5.3.1"
  sha256 "9d4bd93a0b533adcdf51e07b30f6680e19ae73e1be1b921ff3036853c93196fc"

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
