cask "mongodb-realm-studio" do
  version "15.2.1"
  sha256 "cdc7af2ccd8de7055f3a7fef59db8a0bc7154eed7ddb2a3a70dc60231b7b7a58"

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

  caveats do
    requires_rosetta
  end
end
