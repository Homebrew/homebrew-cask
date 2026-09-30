cask "locu" do
  arch arm: "-arm64"

  version "0.33.3"
  sha256 arm:   "62cf263dc173dfaaea63a36a48598ee5abae7177a389bcf4ddf4d4c20b52d987",
         intel: "f530cbf7f394f0096d3596dc3174cdab59292eb29744d5753b431b1acb962b36"

  url "https://locu.sfo2.digitaloceanspaces.com/Locu-#{version}#{arch}-mac.zip"
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
