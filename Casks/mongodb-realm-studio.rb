cask "mongodb-realm-studio" do
  version "11.1.2"
  sha256 "6552fe80de8e4606d24090bd8f0ed843fcde57fdd859271498a418e60b78c1a7"

  url "https://github.com/realm/realm-studio/releases/download/v#{version}/MongoDB.Realm.Studio-#{version}.dmg",
      verified: "github.com/realm/realm-studio/"
  name "MongoDB Realm Studio"
  desc "Tool for the Realm Database and Realm Platform"
  homepage "https://realm.io/products/realm-studio/"

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
