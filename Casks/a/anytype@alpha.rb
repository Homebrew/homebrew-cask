cask "anytype@alpha" do
  arch arm: "arm64", intel: "x64"

  version "0.45.50-alpha"
  sha256 arm:   "54b1f83a8fada74d25210a6f87f7bd9ef00c3cdd4013daafdb4823a7c60f477e",
         intel: "7b3e2dd9941b9a580c7526d2943d06784779f1c8f48667b16718f10913eaa6df"

  url "https://anytype-release.fra1.cdn.digitaloceanspaces.com/Anytype-#{version}-mac-#{arch}.dmg",
      verified: "anytype-release.fra1.cdn.digitaloceanspaces.com/"
  name "Anytype"
  desc "Local-first and end-to-end encrypted notes app"
  homepage "https://anytype.io/"

  livecheck do
    url "https://anytype-release.fra1.cdn.digitaloceanspaces.com/alpha-mac.yml?v=#{Time.new.to_i}"
    strategy :electron_builder
  end

  auto_updates true
  conflicts_with cask: [
    "anytype",
    "anytype@beta",
  ]
  depends_on macos: ">= :catalina"

  app "Anytype.app"

  zap trash: [
    "~/Library/Application Support/anytype2",
    "~/Library/Logs/anytype2",
    "~/Library/Preferences/com.anytype.anytype2.plist",
    "~/Library/Saved Application State/com.anytype.anytype2.savedState",
  ]
end
