cask "element" do
  version "1.7.20"
  sha256 "1e09d4ae150ff282f138ea8fbd995bdcb51bb70a65897858d38e2537d1c5e1d9"

  url "https://packages.riot.im/desktop/install/macos/Element-#{version}.dmg",
      verified: "packages.riot.im/desktop/"
  appcast "https://github.com/vector-im/riot-desktop/releases.atom"
  name "Element"
  desc "Matrix collaboration client"
  homepage "https://element.io/get-started"

  auto_updates true

  app "Element.app"

  zap trash: [
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
