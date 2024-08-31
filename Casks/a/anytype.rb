cask "anytype" do
  arch arm: "arm64", intel: "x64"

  version "0.42.5"
  sha256 arm:   "ef4e4d226550dfaef63ae02f618b3c64a0d6d2a29825264d63a575752f579ae7",
         intel: "04bf023c10ab270807b882235ad5cb9d8d752cb9c58eeda0cda218585cf9a203"

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
