cask "anytype" do
  arch arm: "arm64", intel: "x64"

  version "0.37.0"
  sha256 arm:   "7450cd2fd5f1ad7e6846888ac1aadbe6296d3e5075b46f08665d5dbd5b507935",
         intel: "09cfcc44e88e230bb073e1316369f06081f2c1ace3c94060ca3df7aaedb4d6cc"

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
