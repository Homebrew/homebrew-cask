cask "protopie" do
  version "5.5.3"
  sha256 "b07f27453fe229593574a16a507b123a570d8f1f6360adde4e6a40bb3f4fbb4d"

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
