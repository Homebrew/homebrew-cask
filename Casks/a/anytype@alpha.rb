cask "anytype@alpha" do
  arch arm: "arm64", intel: "x64"

  version "0.46.19-alpha"
  sha256 arm:   "13cc7715ddaa46a1d44a70bd20f6b3d5e77b886593a78c05cc97ee4503b0406c",
         intel: "fe51a9365d7388c7631808c8a97fa6bcd217c5b5dcdd975297f34eae1421dd80"

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
