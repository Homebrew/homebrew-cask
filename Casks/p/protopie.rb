cask "protopie" do
  version "8.2.0"
  sha256 "d6d2006fa5b55aa674825740125cc43854f9d416f953c6f4827bb8444e0f7ab9"

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
