cask "mesh" do
  version "3.0.7"
  sha256 "2fe83281dd1668b67bb30da0e2d650c2d6315ac66d5b41daea1e63ae3d9c8b80"

  url "https://assets.me.sh/mesh-desktop/mac/Mesh-#{version}-universal.dmg"
  name "Mesh"
  desc "Private rolodex to remember people better"
  homepage "https://me.sh/"

  livecheck do
    url "https://assets.me.sh/mesh-desktop/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Mesh.app"

  zap trash: [
    "~/Library/Application Support/Clay",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.clay.mac.sfl*",
    "~/Library/Application Support/com.clay.mac",
    "~/Library/Application Support/Mesh",
    "~/Library/Caches/Clay",
    "~/Library/Caches/Mesh",
    "~/Library/Logs/Clay",
    "~/Library/Logs/Mesh",
    "~/Library/Preferences/com.clay.mac.plist",
    "~/Library/Saved Application State/com.clay.mac.savedState",
  ]
end
