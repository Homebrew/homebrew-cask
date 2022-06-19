cask "element" do
  version "1.10.15"
  sha256 "1d9c1c60839f63d029e5583b0ba69647a26b7c7d18d932f68fafdf2310e26999"

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
