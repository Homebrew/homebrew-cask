cask "height" do
  version "0.24.0"
  sha256 "5b298b86b95a2e84a672baab6e889c55fda6a8ab834cd2116cca7ea6b19ab024"

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
