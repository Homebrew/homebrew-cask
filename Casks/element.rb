cask "element" do
  version "1.7.16"
  sha256 "a31e70b6330b3fa553676b83b8abde213e63ec4fc7a0025ea0e9953f851b6505"

  url "https://packages.riot.im/desktop/install/macos/Element-#{version}.dmg",
      verified: "packages.riot.im/desktop/"
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
