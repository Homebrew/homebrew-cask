cask "mongodb-realm-studio" do
  version "12.0.0"
  sha256 "451e06769b0fa2c1ec0fa94d7892aaafdc01b9a954133e5e6c4a85132344dfd5"

  url "https://github.com/realm/realm-studio/releases/download/v#{version}/Realm.Studio-#{version}.dmg",
      verified: "github.com/realm/realm-studio/"
  name "Realm Studio"
  desc "Tool for the Realm Database and Realm Platform"
  homepage "https://realm.io/products/realm-studio/"

  auto_updates true

  app "Realm Studio.app"

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
