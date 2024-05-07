cask "height" do
  version "0.26.0"
  sha256 "4581b440eaf94b7c1feb1b91ad8e29d946814de8cb21f20ce28f9fbd573619dc"

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
