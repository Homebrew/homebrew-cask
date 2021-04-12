cask "protopie" do
  version "5.4.0"
  sha256 "33d5198e9f9a805b5118b0f9b4a3815cd606a94ee7de0696f209f958065d3931"

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
