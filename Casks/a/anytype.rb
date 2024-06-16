cask "anytype" do
  arch arm: "arm64", intel: "x64"

  version "0.41.1"
  sha256 arm:   "381a9e80f8572876e794c03ceb3077feae19c11c375bd22e1ff2190439b6e72f",
         intel: "52d36cad41bd1bf052abf369dc5e9b8a2eff4653b8481e0473a62778a1ce1f3d"

  url "https://anytype-release.fra1.cdn.digitaloceanspaces.com/Anytype-#{version}-mac-#{arch}.dmg",
      verified: "anytype-release.fra1.cdn.digitaloceanspaces.com/"
  name "Anytype"
  desc "Local-first and end-to-end encrypted notes app"
  homepage "https://anytype.io/"

  livecheck do
    url "https://anytype-release.fra1.cdn.digitaloceanspaces.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Anytype.app"

  zap trash: [
    "~/Library/Application Support/anytype2",
    "~/Library/Logs/anytype2",
    "~/Library/Preferences/com.anytype.anytype2.plist",
    "~/Library/Saved Application State/com.anytype.anytype2.savedState",
  ]
end
