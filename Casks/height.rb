cask "height" do
  version "0.21.0"
  # Skip because the URL is unversioned.
  sha256 :no_check

  url "https://height.app/download/mac"
  name "Height"
  desc "All-in-one project management tool"
  homepage "https://height.app/"

  livecheck do
    url :url
    strategy :header_match do |headers|
      headers["location"][/Height[._-]v?(\d+(?:\.\d+)+)[._-]universal\.dmg/i, 1]
    end
  end

  auto_updates true

  app "Height.app"

  zap trash: [
    "~/Library/Application Support/Height",
    "~/Library/Application Support/Caches/height-electron-updater",
    "~/Library/Caches/app.height",
    "~/Library/Caches/app.height.ShipIt",
    "~/Library/Preferences/app.height.plist",
    "~/Library/Saved Application State/app.height.savedState",
  ]
end
