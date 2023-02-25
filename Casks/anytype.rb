cask "anytype" do
  arch arm: "arm64", intel: "x64"

  version "0.31.0"
  sha256 arm:   "4470248c747736deeb9b2f1f9acfab1f4981d9ece257116c8ebac03146d38c83",
         intel: "a6752bc98ea439834e28a2ad8027f102e9165b72a19d1948a2659b47b3bfd1ff"

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
