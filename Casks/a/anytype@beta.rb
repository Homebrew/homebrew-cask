cask "anytype@beta" do
  arch arm: "arm64", intel: "x64"

  version "0.42.38"
  sha256 arm:   "a837c6cae7608e2daaf1e7b203ba53278d5c68baaf5723a709930fecc22fe20e",
         intel: "16ed729f37554dbeb18d8194719eba1d6f545a9298e7bbac0f25753b2bcbe6d0"

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
