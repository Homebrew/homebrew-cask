cask "raven-reader" do
  version "1.0.80"
  sha256 "4fe0c4be3bd30f91ae35c8216e99bd44f9ff127b7630e3d460cde4fea8ace406"

  url "https://download.helloefficiency.com/ravenreader/Raven%20Reader-#{version}.dmg",
      verified: "download.helloefficiency.com/ravenreader/"
  name "Raven Reader"
  desc "News reader with flexible settings"
  homepage "https://ravenreader.app/"

  livecheck do
    url "https://ridereceiptspro.sfo2.digitaloceanspaces.com/ravenreader/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Raven Reader.app"

  zap trash: [
    "~/Library/Application Support/Raven Reader",
    "~/Library/Caches/org.helloefficiency.ravenreader",
    "~/Library/Caches/org.helloefficiency.ravenreader.ShipIt",
    "~/Library/Logs/Raven Reader",
    "~/Library/Preferences/org.helloefficiency.ravenreader.plist",
    "~/Library/Saved Application State/org.helloefficiency.ravenreader.savedState",
  ]
end
