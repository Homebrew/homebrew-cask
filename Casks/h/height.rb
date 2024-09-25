cask "height" do
  version "0.28.0"
  sha256 "dd9f2f1d6858888ff4c142139e3bd666416c6a4a9b488d5c0ccc8e91bf8c6c33"

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
