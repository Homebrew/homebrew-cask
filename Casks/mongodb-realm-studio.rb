cask "mongodb-realm-studio" do
  version "14.0.1"
  sha256 "18a048e717ec80b6bb7fcd47d215d16d74e6a90d10ef6c494dd197318e532306"

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
