cask "element" do
  version "1.12.28"
  sha256 "42e5f972652d8858111e4af081295934b2e97fbd2cf7faceb12063c4c0bb84b2"

  url "https://packages.element.io/desktop/update/macos/Element-#{version}-universal-mac.zip"
  name "Element"
  desc "Matrix collaboration client"
  homepage "https://element.io/get-started"

  livecheck do
    url "https://packages.element.io/desktop/update/macos/releases.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "Element.app"

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
