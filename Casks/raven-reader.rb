cask "raven-reader" do
  version "1.0.74"
  sha256 "9d37e7787476dfd5ccf9eebfbc06c41124d0338ae3b2d90f94740620143b24d4"

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
