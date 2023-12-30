cask "anytype" do
  arch arm: "arm64", intel: "x64"

  version "0.37.3"
  sha256 arm:   "f062e8bc6b0279770cffc1981b82c7530e6ff4f64995fa2e1c4a1152af0cf5f8",
         intel: "c0090a1742f186e5e62dec7b58f032356b20c4b6dbc071b9bee795e21945a011"

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
