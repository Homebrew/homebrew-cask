cask "element" do
  version "1.7.17"
  sha256 "af37a8b5d9244ed024ed7e656c8ec6e2f5384eb9af90c5d66f105acfad9ccc30"

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
