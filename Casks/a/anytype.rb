cask "anytype" do
  arch arm: "arm64", intel: "x64"

  version "0.42.0"
  sha256 arm:   "ca01cdc867da6485268e6ca46ae706be73e7b703c8ef58c64d68e4466d9d24f6",
         intel: "092f5ac17cded851b1f27c9b33044d9af1e0aaca7024ee16842cc5f19db69a97"

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
