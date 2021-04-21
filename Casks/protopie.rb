cask "protopie" do
  version "5.4.1"
  sha256 "65d3b20e125cccd2dd2bf97cae4c39c89b826cae3b5ba03e7fbe010650d6d8d2"

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
