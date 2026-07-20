cask "locu" do
  arch arm: "-arm64"

  version "0.33.2"
  sha256 arm:   "733db35ac9e0049f40fef1e7ce5c9be394ec6c033f6b8f98d414abbc93d6b917",
         intel: "71f1d6615033bd84b073ff91d2f0bb5f41b0327fdce5a751c3ea60aa48daf224"

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
  depends_on macos: :monterey

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
