cask "capacities" do
  arch arm: "-arm64"

  version "1.71.9"
  sha256 arm:   "6bf736719e04e73a82ddfa14194f7d9a617c0673b57324e3accc776519323d69",
         intel: "ecd230941797928d40ed8f9e7572dac74e2a03e57399a17c8f722286d7b53a4f"

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
