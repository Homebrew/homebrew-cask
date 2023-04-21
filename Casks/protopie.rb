cask "protopie" do
  version "7.6.2"
  sha256 "7f28cbb03dc8a0f830f332fb8fd92c725b9bbdc75a8edb1c5734a02a17f59eb9"

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

  zap trash: [
    "~/Library/Application Support/ProtoPie",
    "~/Library/Preferences/io.protopie.plist",
    "~/Library/Saved Application State/io.protopie.savedState",
  ]
end
