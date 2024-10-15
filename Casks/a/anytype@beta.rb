cask "anytype@beta" do
  arch arm: "arm64", intel: "x64"

  version "0.42.45"
  sha256 arm:   "bd623bd44a33b46d1a970615f8fd674cbe9e59ca98c7dfa4f6d9da44e3353749",
         intel: "eeb7f88e08a0b08bc0254f593b6231b9a342c6114f62f8bd4148e62a34ded583"

  url "https://anytype-release.fra1.cdn.digitaloceanspaces.com/Anytype-#{version}-beta-mac-#{arch}.dmg",
      verified: "anytype-release.fra1.cdn.digitaloceanspaces.com/"
  name "Anytype"
  desc "Local-first and end-to-end encrypted notes app"
  homepage "https://anytype.io/"

  livecheck do
    url "https://anytype-release.fra1.cdn.digitaloceanspaces.com/beta-mac.yml?v=#{Time.new.to_i}"
    strategy :electron_builder do |yaml|
      yaml["version"]&.sub(/[._-]beta.*$/i, "")
    end
  end

  auto_updates true
  conflicts_with cask: [
    "anytype",
    "anytype@alpha",
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
