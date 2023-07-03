cask "protopie" do
  version "7.8.0"
  sha256 "d6a131fd3ac5158516f3ed01a47d07b63176f395b348c3a5808eb80c82597fb4"

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
