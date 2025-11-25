cask "locu" do
  arch arm: "-arm64"

  version "0.23.2"
  sha256 arm:   "f304816b931112dc78a51fa984cc6c0eff8cb68259b05835334a73a038603c00",
         intel: "58b18bf5c2f64014d6e3bf70b685809ad151d9bec8d512c5a20eb65e8d1a536c"

  url "https://locu.sfo2.digitaloceanspaces.com/Locu-#{version}#{arch}-mac.zip",
      verified: "locu.sfo2.digitaloceanspaces.com/"
  name "Locu"
  desc "Daily planner and focus timer"
  homepage "https://locu.app/"

  livecheck do
    url "https://locu.sfo2.digitaloceanspaces.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Locu.app"

  zap trash: [
    "~/Library/Application Support/Locu",
    "~/Library/Caches/app.locu",
    "~/Library/Caches/app.locu.ShipIt",
    "~/Library/HTTPStorages/app.locu",
    "~/Library/Logs/Locu",
    "~/Library/Preferences/app.locu.plist",
    "~/Library/Saved Application State/app.locu.savedState",
  ]
end
