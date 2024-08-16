cask "anytype" do
  arch arm: "arm64", intel: "x64"

  version "0.42.4"
  sha256 arm:   "e86b9c9285cc4c0eaf3aaad7f1ba868df5b64a8829a33e83e785b9f919d570ba",
         intel: "b3dc14756f01e9dd0de8bca0d7352b441f46d5e5b369b060de8952182076b64b"

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
