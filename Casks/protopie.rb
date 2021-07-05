cask "protopie" do
  version "5.4.3"
  sha256 "bb92ede257e3520f1038b17712e59a1a6f0e8a4dbfe004f73ef90dc8cf6298b5"

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
