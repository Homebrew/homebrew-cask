cask "protopie" do
  version "8.4.0"
  sha256 "d605f9c91ac61992cad079e7584d4264a929038206d2ecd6117c063d16842823"

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
