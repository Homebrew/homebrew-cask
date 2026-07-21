cask "capacities" do
  arch arm: "-arm64"

  version "1.67.13"
  sha256 arm:   "4f20b318b52146b8c4bb4e6fe4a4eb7e0ca61429597c13ef13267d0f955bb68e",
         intel: "f37a7691964eeb28d910f4163811d36fcb01b8ab8c1eb9d7f9634f71518400af"

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
