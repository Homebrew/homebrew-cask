cask "capacities" do
  arch arm: "-arm64"

  version "1.65.9"
  sha256 arm:   "ff1275b0ed0dd189eec34b1e8e951fe6cbf4fa8be8243eab7ebd48e3c4bacbc5",
         intel: "5a9623c63d3f6789d8e5d44cfcfe36ad5fe9a8e70c192f417bc8640a70550c38"

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
