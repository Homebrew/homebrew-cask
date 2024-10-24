cask "anytype@beta" do
  arch arm: "arm64", intel: "x64"

  version "0.42.51"
  sha256 arm:   "df4fb706d571bbae661bd74e08f826b3b12a9ec27f86a8a7d456985c4dc0a7c0",
         intel: "195f5b30453cb5b29e0e346c5ef4e02097e2447fdbdd66a48a34ba1420a27a71"

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
