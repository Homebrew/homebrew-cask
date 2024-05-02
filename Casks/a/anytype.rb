cask "anytype" do
  arch arm: "arm64", intel: "x64"

  version "0.40.8"
  sha256 arm:   "c0442d043a3b442d6314143026361f1b94d5604d7ec8ba10a994bdacf7caf95d",
         intel: "07f6b29dd48787ce4e89269f22c93888ad3d6ba27d4d8ed7b19180fa4bcea935"

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
