cask "protopie" do
  version "9.0.0"
  sha256 "f0324271712b257563b45c45f5cd7f4b2dfae30721f330c75a5f5c697f78c902"

  url "https://release.protopie.io/ProtoPie-#{version}-universal.dmg"
  name "ProtoPie"
  desc "Create interactive prototypes"
  homepage "https://www.protopie.io/"

  livecheck do
    url "https://download.protopie.io/darwin/latest"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "ProtoPie.app"

  zap trash: [
    "~/Library/Application Support/ProtoPie",
    "~/Library/Preferences/io.protopie.plist",
    "~/Library/Saved Application State/io.protopie.savedState",
  ]
end
