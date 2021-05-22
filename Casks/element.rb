cask "element" do
  version "1.7.28"
  sha256 "a1c4bee42ebb2d0d4cfef3423bf0a53a2fbcd7baadf0490f8cd9707fc963dd31"

  url "https://packages.riot.im/desktop/install/macos/Element-#{version}.dmg",
      verified: "packages.riot.im/desktop/"
  name "Element"
  desc "Matrix collaboration client"
  homepage "https://element.io/get-started"

  livecheck do
    url "https://github.com/vector-im/riot-desktop"
    strategy :github_latest
  end

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
