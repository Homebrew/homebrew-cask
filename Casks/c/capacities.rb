cask "capacities" do
  arch arm: "-arm64"

  version "1.66.1"
  sha256 arm:   "7459b48669fba23acfb9b3a16b6670e711eea22d960dc9e2e605c4b7331b0d41",
         intel: "f37d638481cb147485daf1cb7c43135f2cd3b2b85ace8e513ec69ad69fcc51ee"

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
