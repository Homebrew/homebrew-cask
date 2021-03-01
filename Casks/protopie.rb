cask "protopie" do
  version "5.3.0"
  sha256 "e71904866231aeace465fe7bbbf8bd7b429fbe6ca157c1d201594015d4d2d763"

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
