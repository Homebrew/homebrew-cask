cask "element" do
  # NOTE: currently the file version and application version diverge, for unknown reasons!
  version "1.11.5"
  file_version = "1.11.2"
  sha256 "bfa6585340a69b0185f758e546a05697a76f0f19ca8986b58a1661f2b7a34f61"

  url "https://packages.riot.im/desktop/install/macos/Element-#{file_version}-universal.dmg",
      verified: "packages.riot.im/desktop/"
  name "Element"
  desc "Matrix collaboration client"
  homepage "https://element.io/get-started"

  livecheck do
    url "https://github.com/vector-im/element-desktop/releases/tag"
    regex(/v(\d+(?:\.\d+)*)/i)
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
