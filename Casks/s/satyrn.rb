cask "satyrn" do
  arch arm: "arm64", intel: "x64"

  version "0.0.111"
  sha256 arm:   "49efe2a22a4adc9cbbc73f4de1015a7075fb4935aaf39e5b0f5e199ff91d6369",
         intel: "bfa9b4ef21f8e6722ae5366608edd5511a1f2d4b0226460dc7871c43e63652d2"

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
