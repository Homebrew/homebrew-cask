cask "satyrn" do
  arch arm: "arm64", intel: "x64"

  version "0.0.112"
  sha256 arm:   "8da870812ce7dff55abfaaf2e71bdef1b1fcf77a9c02731659cbcf081cbb1ece",
         intel: "a5d4c119bafb6d4b535c3b6a57d989a22070db56708efaacf140098566b245af"

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
