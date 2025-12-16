cask "locu" do
  arch arm: "-arm64"

  version "0.25.1"
  sha256 arm:   "4890ae1931e07c6450d11223b3d75b1418b161ecbb9da9f433f7f574c3ff6103",
         intel: "e1d4f6ef187542ae3695a8329f47c0109c3f52ba227ea5c964cc671bdba3e2b9"

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
