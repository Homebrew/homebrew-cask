cask "height" do
  version "0.28.2"
  sha256 "d1bc02ef43598842d0a96533127ce0f2d38a56397e43ab1df31f2c02662ef17d"

  url "https://storage.googleapis.com/height-statics/_app/Height-#{version}-universal.dmg",
      verified: "storage.googleapis.com/height-statics/_app/"
  name "Height"
  desc "All-in-one project management tool"
  homepage "https://height.app/"

  livecheck do
    url "https://storage.googleapis.com/height-statics/_app/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Height.app"

  zap trash: [
    "~/Library/Application Support/Caches/height-electron-updater",
    "~/Library/Application Support/Height",
    "~/Library/Caches/app.height",
    "~/Library/Caches/app.height.ShipIt",
    "~/Library/Preferences/app.height.plist",
    "~/Library/Saved Application State/app.height.savedState",
  ]
end
