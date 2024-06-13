cask "anytype" do
  arch arm: "arm64", intel: "x64"

  version "0.41.0"
  sha256 arm:   "82cdec1d9d6c67d68d8392b747dcf6983cf6d881c78610fa066df7450be59374",
         intel: "0fe22e45513f7ddc4d4551b08b6bdfbcd21ba75bc96c91798e263c4d2ff17364"

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
