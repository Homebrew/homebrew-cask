cask "realm-studio" do
  version "5.0.0"
  sha256 "188c49a42b5405b5083881c7c951ccd44f0e12d788d961f0a3633afdbdc66c74"

  url "https://static.realm.io/downloads/realm-studio/Realm%20Studio-#{version}-mac.zip"
  appcast "https://github.com/realm/realm-studio/releases.atom"
  name "Realm Studio"
  desc "Tool for Realm Database and Realm Platform"
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
