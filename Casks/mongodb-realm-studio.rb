cask "mongodb-realm-studio" do
  version "11.1.1"
  sha256 "6fa53d7e9ea4e707f353167e7fc79e6d1f0e5914a59c82d1fd57e54a9928a49a"

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
