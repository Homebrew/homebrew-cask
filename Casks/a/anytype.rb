cask "anytype" do
  arch arm: "arm64", intel: "x64"

  version "0.33.3"
  sha256 arm:   "d62e7dccb74f65d80e6f9b4fa688853a4cb899e25e226e4992782d28fb9a6b11",
         intel: "19c6834f96fe740c21e07a2bc9a1b1e746dfc05d37d3f04e2ef067a708127a12"

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
