cask "anytype" do
  arch arm: "arm64", intel: "x64"

  version "0.34.3"
  sha256 arm:   "e97c36d4a0949f3c6d0771c98e1f7d03a48b4742f026255cf433f9d2f4df1557",
         intel: "d8db4cabf14bbba3f0141ebb508713a47d28433c0a5ef80143b0ff293c480c00"

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
