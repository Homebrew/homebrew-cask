cask "protopie" do
  version "8.3.1"
  sha256 "618d95f005259cf52a36c0086dbe7e35070c9cde2b39480c20ef8ed01a5d5c14"

  url "https://release.protopie.io/ProtoPie-#{version}-universal.dmg"
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
