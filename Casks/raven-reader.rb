cask "raven-reader" do
  version "1.0.78"
  sha256 "b0f54f35b6ab6fd77cb5136719f12e72746d6f7f5c59d2d05427166fc55f3747"

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
