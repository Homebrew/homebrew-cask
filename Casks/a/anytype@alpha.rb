cask "anytype@alpha" do
  arch arm: "arm64", intel: "x64"

  version "0.43.15-alpha"
  sha256 arm:   "d8f96971f2717d4ed7d406b3119bb93a9200d1ddf31b1c89c9ad2fe2bcb9df31",
         intel: "9250a0ce3ea938c54ce18342f57fe7e13b0076b089d5f3309a52914bff0cc607"

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
