cask "locu" do
  arch arm: "-arm64"

  version "0.23.1"
  sha256 arm:   "4bca51b4a180d0dbfdfa82676d3516238dd74457d83ceb0dfbd300665291f54b",
         intel: "914dbc0e26c26c9c400d55013638013925c8486493893f3643b4bed9f8f5abfe"

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
