cask "mongodb-realm-studio" do
  version "10.1.1"
  sha256 "e3aca82848cff0c457e4cf8987d89fe17a41cb58a615bd4d6c308844ee2b6fb8"

  url "https://github.com/realm/realm-studio/releases/download/v#{version}/MongoDB.Realm.Studio-#{version}.dmg",
      verified: "github.com/realm/realm-studio/"
  appcast "https://github.com/realm/realm-studio/releases.atom"
  name "MongoDB Realm Studio"
  desc "Tool for the Realm Database and Realm Platform"
  homepage "https://www.mongodb.com/realm/mobile/database"

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
