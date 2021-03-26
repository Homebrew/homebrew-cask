cask "protopie" do
  version "5.3.2"
  sha256 "bcb5d41d94e1cc0b25ca7eef3a1b715c91194db96a07e8528071c9a6d710d62d"

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
