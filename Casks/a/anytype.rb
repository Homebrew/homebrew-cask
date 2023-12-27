cask "anytype" do
  arch arm: "arm64", intel: "x64"

  version "0.37.2"
  sha256 arm:   "4112ea670865587c7f857ed5d64e2f4ca599985eb83172b8c9bec908a4017529",
         intel: "0b6c82fa8ec3ee015ee91e9eecf868c1dba9cd5d98ceb07ac2134d31653859c0"

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
