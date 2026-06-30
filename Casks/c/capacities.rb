cask "capacities" do
  arch arm: "-arm64"

  version "1.66.7"
  sha256 arm:   "096999fa4e12296194a5193d6adb79ba12232f25f369bd53fef0113d64d73805",
         intel: "d21c650bbcc681cfb56736ddb49b7313fa8e207c54a60ccf388d8631051aa973"

  url "https://2vks4.upcloudobjects.com/capacities-desktop-app/Capacities-#{version}#{arch}.dmg",
      verified: "2vks4.upcloudobjects.com/capacities-desktop-app/"
  name "Capacities"
  desc "App to write and organise your ideas"
  homepage "https://capacities.io/"

  livecheck do
    url "https://2vks4.upcloudobjects.com/capacities-desktop-app/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :monterey

  app "Capacities.app"

  zap trash: [
    "~/Library/Application Support/Capacities",
    "~/Library/Logs/Capacities",
    "~/Library/Preferences/io.capacities.app.plist",
    "~/Library/Saved Application State/io.capacities.app.savedState",
  ]
end
