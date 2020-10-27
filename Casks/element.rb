cask "element" do
  version "1.7.11"
  sha256 "325584710f85c60addc59eea2e3a1e9f024a52c2e42ad42771d0e38f655bcb6a"

  # packages.riot.im/desktop was verified as official when first introduced to the cask
  url "https://packages.riot.im/desktop/install/macos/Element-#{version}.dmg"
  appcast "https://github.com/vector-im/riot-desktop/releases.atom"
  name "Element (Riot)"
  desc "Matrix collaboration client"
  homepage "https://element.io/get-started"

  auto_updates true

  app "Element.app"

  zap trash: [
    "~/Library/Application Support/Element (Riot)",
    "~/Library/Application Support/Element",
    "~/Library/Application Support/Riot",
    "~/Library/Caches/im.riot.app",
    "~/Library/Caches/im.riot.app.ShipIt",
    "~/Library/Logs/Riot",
    "~/Library/Preferences/im.riot.app.helper.plist",
    "~/Library/Preferences/im.riot.app.plist",
    "~/Library/Saved Application State/im.riot.app.savedState",
  ]
end
