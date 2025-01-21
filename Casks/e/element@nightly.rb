cask "element@nightly" do
  version "2025012101"
  sha256 "d1f9603a7ae4741ee83ab213c119ffad3e624b6d4e9b955b34e58f303eb6714b"

  url "https://packages.element.io/nightly/update/macos/Element%20Nightly-#{version}-universal-mac.zip"
  name "Element Nightly"
  desc "Matrix collaboration client"
  homepage "https://element.io/get-started"

  livecheck do
    url "https://packages.element.io/nightly/update/macos/releases.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Element Nightly.app"

  zap trash: [
    "~/Library/Application Support/Element",
    "~/Library/Application Support/Riot",
    "~/Library/Caches/im.riot.app",
    "~/Library/Caches/im.riot.app.ShipIt",
    "~/Library/HTTPStorages/im.riot.app",
    "~/Library/Logs/Riot",
    "~/Library/Preferences/ByHost/im.riot.app.ShipIt.*.plist",
    "~/Library/Preferences/im.riot.app.helper.plist",
    "~/Library/Preferences/im.riot.app.plist",
    "~/Library/Saved Application State/im.riot.app.savedState",
  ]
end
