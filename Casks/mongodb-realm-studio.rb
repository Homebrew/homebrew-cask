cask "mongodb-realm-studio" do
  version "11.1.1"
  sha256 "84f68e04624b65f54fd301bbbb4a7e1161b2d7fb7d51ae70284d9d991d0cae26"

  url "https://github.com/realm/realm-studio/releases/download/v#{version}/MongoDB.Realm.Studio-#{version}.dmg",
      verified: "github.com/realm/realm-studio/"
  name "MongoDB Realm Studio"
  desc "Tool for the Realm Database and Realm Platform"
  homepage "https://docs.mongodb.com/realm-legacy/products/realm-studio.html"

  auto_updates true

  app "MongoDB Realm Studio.app"

  zap delete: [
    "~/Library/Application Support/Realm Studio",
    "~/Library/Caches/io.realm.realm-studio",
    "~/Library/Caches/io.realm.realm-studio.ShipIt",
    "~/Library/Logs/Realm Studio",
    "~/Library/Preferences/io.realm.realm-studio.helper.plist",
    "~/Library/Preferences/io.realm.realm-studio.plist",
    "~/Library/Saved Application State/io.realm.realm-studio.savedState",
  ]
end
