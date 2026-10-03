cask "locu" do
  arch arm: "-arm64"

  version "0.34.0"
  sha256 arm:   "0881b518268c3f16e5009ec54cb5998ea3dd82fac0b8e9fcc36de13b36437adc",
         intel: "5cda21a2ecda7de72f691ecc7970eb5637306cc3b9f8fb8cc1d336dcd96b3d3a"

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
