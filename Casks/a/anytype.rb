cask "anytype" do
  arch arm: "arm64", intel: "x64"

  version "0.35.1"
  sha256 arm:   "ecfd4a072f1d107718598fb576d33c2aeb159425688984a1d316e40a2d564d56",
         intel: "72d6dfd877e8e8353bc7d072cfae8150357b8f30a1a33c21ad80f65ebb4c5df0"

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
