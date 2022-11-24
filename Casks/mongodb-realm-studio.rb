cask "mongodb-realm-studio" do
  version "13.0.0"
  sha256 "354ad49010adf814127f09ed6ceaad1262730010a2ffed7111b3aa53d3249e63"

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
