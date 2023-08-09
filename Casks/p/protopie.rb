cask "protopie" do
  version "7.8.1"
  sha256 "5d50ad839e7e3cfc902e66bb8f4ae389afbfec8b85be428641b174f1fe4c1603"

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
