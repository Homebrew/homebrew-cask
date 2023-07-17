cask "anytype" do
  arch arm: "arm64", intel: "x64"

  version "0.33.2"
  sha256 arm:   "3100c8810d853679dbccdbde7e5d503665c0172e07d8ea29aeb6c29fa0450f8a",
         intel: "bf236aff9bfa904b7f764ef9d1530ab877e2d92ada2f6b49f38f313491a2706c"

  url "https://anytype-release.fra1.cdn.digitaloceanspaces.com/Anytype-#{version}-mac-#{arch}.dmg",
      verified: "anytype-release.fra1.cdn.digitaloceanspaces.com/"
  name "Anytype"
  desc "Local-first and end-to-end encrypted notes app"
  homepage "https://anytype.io/"

  livecheck do
    url "https://anytype-release.fra1.cdn.digitaloceanspaces.com/latest-mac.yml"
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
