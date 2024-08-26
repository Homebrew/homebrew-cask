cask "protopie" do
  version "8.3.0"
  sha256 "f9f2dd13689aacf2a36f5274b2099da1ef2b468ab388643628da4d515d556422"

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
