cask "anytype@alpha" do
  arch arm: "arm64", intel: "x64"

  version "0.42.27"
  sha256 arm:   "1d3366fe8ce6ea0b66aec78f9731ba4e182c1971c56c8475b3d584f59139e24c",
         intel: "49664837bdf3603010f8ceb74bbd8982b0cb75b0662550ae5b35535da6eba8c1"

  url "https://anytype-release.fra1.cdn.digitaloceanspaces.com/Anytype-#{version}-alpha-mac-#{arch}.dmg",
      verified: "anytype-release.fra1.cdn.digitaloceanspaces.com/"
  name "Anytype"
  desc "Local-first and end-to-end encrypted notes app"
  homepage "https://anytype.io/"

  livecheck do
    url "https://anytype-release.fra1.cdn.digitaloceanspaces.com/alpha-mac.yml"
    strategy :electron_builder do |yaml|
      yaml["version"]&.sub(/[._-]alpha.*$/i, "")
    end
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
