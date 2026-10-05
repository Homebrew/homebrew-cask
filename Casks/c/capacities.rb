cask "capacities" do
  arch arm: "-arm64"

  version "1.71.19"
  sha256 arm:   "6c773a7244c7728a56dd4b5e680f85c9941eae0d2b5e2595e79241bdd1983bbd",
         intel: "bf350a8a36842978346c30d63b1950b46bcaa48b6a695ae26d2c3a6022f23ac4"

  url "https://2vks4.upcloudobjects.com/capacities-desktop-app/Capacities-#{version}#{arch}.dmg"
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
