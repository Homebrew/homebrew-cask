cask "mongodb-realm-studio" do
  version "10.0.1"
  sha256 "d8c7635eed6126a2b6772d3d5381b58763066780fc23b271e5f9aff371991663"

  # github.com/realm/realm-studio/ was verified as official when first introduced to the cask
  url "https://github.com/realm/realm-studio/releases/download/v#{version}/MongoDB.Realm.Studio-#{version}.dmg"
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
