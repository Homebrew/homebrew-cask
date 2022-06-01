cask "element" do
  version "1.10.13"
  sha256 "dc20902fc96d9e245bc8420670d5badc367433ec3be04837885505850394f5cd"

  url "https://packages.riot.im/desktop/install/macos/Element-#{version}-universal.dmg",
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
