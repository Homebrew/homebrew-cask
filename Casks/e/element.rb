cask "element" do
  version "1.11.86"
  sha256 "f4319c6b081c61558754cc40b10cf2c68e231bea47bae64936d8e3fb4b577c1b"

  url "https://packages.element.io/desktop/install/macos/Element-#{version}-universal.dmg"
  name "Element"
  desc "Matrix collaboration client"
  homepage "https://element.io/get-started"

  livecheck do
    url "https://packages.element.io/desktop/install/macos/index.html"
    regex(/href=.*?Element[._-]v?(\d+(?:\.\d+)+)[._-]universal\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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
