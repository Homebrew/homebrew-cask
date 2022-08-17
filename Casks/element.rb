cask "element" do
  version "1.11.2"
  sha256 "2c90eb6b779938f7a79dc7f6ef52da291b3c063e14ad182a0623ba2ea2ac3fb2"

  url "https://packages.riot.im/desktop/install/macos/Element-#{version}-universal.dmg",
      verified: "packages.riot.im/desktop/"
  name "Element"
  desc "Matrix collaboration client"
  homepage "https://element.io/get-started"

  livecheck do
    url "https://packages.riot.im/desktop/install/macos"
    regex(/Element[._-]\(?(\d+(?:\.\d+)*)[._-]universal\.dmg/i)
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
