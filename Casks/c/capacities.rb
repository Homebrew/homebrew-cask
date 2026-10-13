cask "capacities" do
  arch arm: "-arm64"

  version "1.71.27"
  sha256 arm:   "8d5d375f512fc8fdfe09a134b6e8e12b35e3a099002b9091795e13278767cf85",
         intel: "3fc27e078c561aa094cd98d45ee8d5c220c533eb65ad3d4a4823f0f15ac69868"

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
