cask "anytype" do
  arch arm: "arm64", intel: "x64"

  version "0.31.9"
  sha256 arm:   "a82bb95f077a921416b97e86534023d51858140491f32b44e4583b3d0c513882",
         intel: "e8b98f7145f7d262a8a8edf79de958c71af9a28169e90fae4e2eb5a41f6f76d7"

  url "https://at9412003.fra1.cdn.digitaloceanspaces.com/Anytype-#{version}-mac-#{arch}.dmg",
      verified: "at9412003.fra1.cdn.digitaloceanspaces.com/"
  name "Anytype"
  desc "Local-first and end-to-end encrypted notes app"
  homepage "https://anytype.io/"

  livecheck do
    url "https://at9412003.fra1.digitaloceanspaces.com/latest-mac.yml"
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
