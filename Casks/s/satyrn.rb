cask "satyrn" do
  arch arm: "arm64", intel: "x64"

  version "0.0.106"
  sha256 arm:   "f6ba3d61440b72da80561244d3359144cb9f6d4e11740ef064b7671b5c0b950e",
         intel: "26098868e0d91cc5f94f4343cf646144dd7f464747171f05097659ecc4a46078"

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
