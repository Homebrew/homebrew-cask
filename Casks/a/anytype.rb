cask "anytype" do
  arch arm: "arm64", intel: "x64"

  version "0.43.7"
  sha256 arm:   "d1125da4fbe35f81f899c906db2333520c341937fe5766bb3387083728ba54a3",
         intel: "71790491fce48d4683c99ce13cf0f1722a56a5f1a0f7e226d6cd2231e911549e"

  url "https://anytype-release.fra1.cdn.digitaloceanspaces.com/Anytype-#{version}-mac-#{arch}.dmg",
      verified: "anytype-release.fra1.cdn.digitaloceanspaces.com/"
  name "Anytype"
  desc "Local-first and end-to-end encrypted notes app"
  homepage "https://anytype.io/"

  livecheck do
    url "https://anytype-release.fra1.cdn.digitaloceanspaces.com/latest-mac.yml?v=#{Time.new.to_i}"
    strategy :electron_builder
  end

  auto_updates true
  conflicts_with cask: [
    "anytype@alpha",
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
