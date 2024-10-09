cask "anytype@beta" do
  arch arm: "arm64", intel: "x64"

  version "0.42.29"
  sha256 arm:   "7f162fd775592b0bda2091e3e71e6fe2f5f8bfc61a804bdd471b4b71f4c870c7",
         intel: "c061a2160831afe0294da785bfe523428204443ac09fc2537738d49a2887c686"

  url "https://anytype-release.fra1.cdn.digitaloceanspaces.com/Anytype-#{version}-beta-mac-#{arch}.dmg",
      verified: "anytype-release.fra1.cdn.digitaloceanspaces.com/"
  name "Anytype"
  desc "Local-first and end-to-end encrypted notes app"
  homepage "https://anytype.io/"

  livecheck do
    url "https://anytype-release.fra1.cdn.digitaloceanspaces.com/beta-mac.yml"
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
