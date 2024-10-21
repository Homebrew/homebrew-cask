cask "anytype@beta" do
  arch arm: "arm64", intel: "x64"

  version "0.42.46"
  sha256 arm:   "ca33e3a84c3212ac5694d6d799487c6fe4cca625111c407b216dd7be586ad69b",
         intel: "b8028614bd990238778bfcda58dde7cd32dda5139b1ac418e2b586125192f90a"

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
