cask "element@nightly" do
  version "2026072901"
  sha256 "99a1bdd9266e45166c4932b7297fef9c7bca4e4c4c77064b974a77722f296268"

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
  depends_on macos: :monterey

  app "Element Nightly.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/im.riot.nightly.sfl*",
    "~/Library/Application Support/Element Nightly",
    "~/Library/Application Support/Element",
    "~/Library/Application Support/Riot",
    "~/Library/Caches/im.riot.app",
    "~/Library/Caches/im.riot.app.ShipIt",
    "~/Library/HTTPStorages/im.riot.app",
    "~/Library/Logs/Riot",
    "~/Library/Preferences/ByHost/im.riot.app.ShipIt.*.plist",
    "~/Library/Preferences/im.riot.app.helper.plist",
    "~/Library/Preferences/im.riot.app.plist",
    "~/Library/Preferences/im.riot.nightly.plist",
    "~/Library/Saved Application State/im.riot.app.savedState",
  ]
end
