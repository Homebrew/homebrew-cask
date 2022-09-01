cask "element" do
  version "1.11.2"
  sha256 "ffecde430594c14dc9b71b70be376ce7515f20e00529128a0f256830de99a094"

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
