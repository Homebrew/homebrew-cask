cask "satyrn" do
  arch arm: "arm64", intel: "x64"

  version "0.0.117"
  sha256 arm:   "216b7e85c01966893c454f17975f4d574dcd0958ba541b3dac851bb00b2f6fbf",
         intel: "b5bd38d4e93054b4b0616cea78b05703287773411a1145ad98fcd4435428ccde"

  url "https://satyrn-updates.s3.amazonaws.com/satyrn-#{version}-#{arch}.dmg",
      verified: "satyrn-updates.s3.amazonaws.com/"
  name "Satyrn"
  desc "Jupyter client"
  homepage "https://satyrn.app/"

  livecheck do
    url "https://satyrn-updates.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "satyrn.app"

  zap trash: [
    "~/Library/Application Support/Satyrn",
    "~/Library/Caches/com.satyrn.app",
    "~/Library/Caches/com.satyrn.app.ShipIt",
    "~/Library/Caches/satyrn-updater",
    "~/Library/HTTPStorages/com.satyrn.app",
    "~/Library/Preferences/ByHost/com.satyrn.app.ShipIt.*.plist",
    "~/Library/Preferences/com.satyrn.app.plist",
    "~/Library/Saved Application State/com.satyrn.app.savedState",
  ]
end
