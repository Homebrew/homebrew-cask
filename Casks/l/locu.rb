cask "locu" do
  arch arm: "-arm64"

  version "0.25.5"
  sha256 arm:   "dc874a13f0f93c7bf23cc876dcbbe0ae98aebb2e0ce84b72f05057a3b3d7689d",
         intel: "1478914354a76cdb389f435b9e3cb73c4377a3cec6264d165e33e8d4220f7942"

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
