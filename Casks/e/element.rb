cask "element" do
  version "1.11.73"
  sha256 "a4a53561bb69f562720fd919584e892b76089396c930f34b6ffb364c47a95eab"

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
