cask "anytype" do
  arch arm: "arm64", intel: "x64"

  version "0.40.9"
  sha256 arm:   "1b4d1a8abaf4988bc25e756ae8542f81bbeed160227231c039d1d1761c06a3f8",
         intel: "cb96cc2ebaae4cecb5be1b4c56d1257976f7f6027a4aa989e97b11b6aec85645"

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
