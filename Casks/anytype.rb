cask "anytype" do
  arch arm: "arm64", intel: "x64"

  version "0.29.1"
  sha256 arm:   "cb7103f45c075704ad7d28a3d3da2415548b6fa06f6715533641e4cd69c4ae37",
         intel: "82d6415c43da20141e47996633f12ba4cbc831e5e907e14a1dbccec6fd89a517"

  url "https://at9412003.fra1.cdn.digitaloceanspaces.com/Anytype-#{version}-mac-#{arch}.dmg",
      verified: "at9412003.fra1.cdn.digitaloceanspaces.com/"
  name "Anytype"
  desc "Local-first and end-to-end encrypted notes app"
  homepage "https://anytype.io/"

  livecheck do
    url "https://at9412003.fra1.digitaloceanspaces.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Anytype.app"

  zap trash: [
    "~/Library/Application Support/anytype2",
    "~/Library/Logs/anytype2",
    "~/Library/Preferences/com.anytype.anytype2.plist",
    "~/Library/Saved Application State/com.anytype.anytype2.savedState",
  ]
end
