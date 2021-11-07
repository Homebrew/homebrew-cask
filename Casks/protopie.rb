cask "protopie" do
  version "5.5.4"
  sha256 "5a00798089d31ba61c7103352de8b637d30fab43f6c5ffed99474215db213748"

  url "https://release.protopie.io/ProtoPie-#{version}.dmg"
  name "ProtoPie"
  desc "Create interactive prototypes"
  homepage "https://www.protopie.io/"

  livecheck do
    url "https://download.protopie.io/darwin/latest"
    strategy :header_match
  end

  auto_updates true

  app "ProtoPie.app"
end
