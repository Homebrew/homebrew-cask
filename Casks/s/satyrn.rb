cask "satyrn" do
  arch arm: "arm64", intel: "x64"

  version "0.0.114"
  sha256 arm:   "f69ecf565698a0a686db92d1326fdf614dcd3d3ca2672a4714c61a5f70b2ba98",
         intel: "3877167b23a9842fc58f134a4ec40547f64ce85b3ae0ef9c8588de45e1047248"

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
  depends_on macos: ">= :catalina"

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
