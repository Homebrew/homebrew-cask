cask "mesh" do
  version "3.0.11"
  sha256 "30754e30420f1364c9c674155c4547be82ce2869a8477e7bd9fb6163f0063edd"

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
