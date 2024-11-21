cask "anytype@alpha" do
  arch arm: "arm64", intel: "x64"

  version "0.43.18-alpha"
  sha256 arm:   "05a86b6caaae490f43df090b8804d4c6c48e8cb819a7d1f9aa3c0234a7628a85",
         intel: "e17112e2bc7839c4d8fc9bf5e0cbd0d0075145b518c0e470a289ff66f74299a7"

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
