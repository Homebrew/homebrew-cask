cask "capacities" do
  arch arm: "-arm64"

  version "1.71.24"
  sha256 arm:   "37b0a50bd3138076fd2f8ede31d8f92920ff339190d88a90b4e087d9840a5965",
         intel: "e6807b4ad4be14a5e58e32bed1ca0a110f47f783f23528162ec8f24e3535c0a8"

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
