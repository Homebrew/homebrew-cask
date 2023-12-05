cask "element" do
  version "1.11.51"
  sha256 :no_check

  url "https://packages.element.io/desktop/install/macos/Element.dmg"
  name "Element"
  desc "Matrix collaboration client"
  homepage "https://element.io/get-started"

  # The upstream website doesn't appear to provide version information. We check
  # GitHub releases as a best guess of when a new version is released.
  livecheck do
    url "https://github.com/vector-im/element-desktop"
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
