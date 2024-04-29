cask "element@nightly" do
  version :latest
  sha256 :no_check

  url "https://packages.riot.im/nightly/install/macos/Element%20Nightly.dmg",
      verified: "packages.riot.im/nightly/install/macos/"
  name "Element Nightly"
  desc "Matrix collaboration client"
  homepage "https://element.io/get-started"

  depends_on macos: ">= :catalina"

  app "Element Nightly.app"

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
