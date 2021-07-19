cask "protopie" do
  version "5.5.1"
  sha256 "ac73c14630c7f55e4e92c5f4b6deef72e9eaeacb566d0f034c4fd7524b7cf821"

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
