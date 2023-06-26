cask "anytype" do
  arch arm: "arm64", intel: "x64"

  version "0.32.3"
  sha256 arm:   "0b44ed28eb6df6ec85cd59f1cc0d5cfb9cfbc8626b64966bae7bd2cfdf201ec7",
         intel: "8309223a10ce26c6709b4650bc3e84f6f2fb5ed5d3f37ec07474062a63eb8016"

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
